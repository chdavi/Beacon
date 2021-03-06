<?php

class BeaconEngram implements JsonSerializable {
	const ENVIRONMENT_ISLAND = 1;
	const ENVIRONMENT_SCORCHED = 2;
	const ENVIRONMENT_CENTER = 4;
	const ENVIRONMENT_RAGNAROK = 8;
	const ENVIRONMENT_ABBERATION = 16;
	
	protected $path = '';
	protected $class_string = '';
	protected $label = '';
	protected $availability = 0;
	protected $can_blueprint = false;
	protected $mod_id = null;
	protected $mod_name = null;
	
	public function ClassString () {
		return $this->class_string;
	}
	
	public function Path() {
		return $this->path;
	}
	
	public function Label() {
		return $this->label;
	}
	
	public function Availability() {
		return $this->availability;
	}
	
	public function AvailableToIsland() {
		return ($this->availability & self::ENVIRONMENT_ISLAND) == self::ENVIRONMENT_ISLAND;
	}
	
	public function AvailableToScorched() {
		return ($this->availability & self::ENVIRONMENT_SCORCHED) == self::ENVIRONMENT_SCORCHED;
	}
	
	public function AvailableToCenter() {
		return ($this->availability & self::ENVIRONMENT_CENTER) == self::ENVIRONMENT_CENTER;
	}
	
	public function AvailableToRagnarok() {
		return ($this->availability & self::ENVIRONMENT_RAGNAROK) == self::ENVIRONMENT_RAGNAROK;
	}
	
	public function AvailableToAbberation() {
		return ($this->availability & self::ENVIRONMENT_ABBERATION) == self::ENVIRONMENT_ABBERATION;
	}
	
	public function CanBlueprint() {
		return $this->can_blueprint;
	}
	
	public function ModID() {
		return $this->mod_id;
	}
	
	public function ModName() {
		return $this->mod_name;
	}
	
	public function SpawnCode() {
		return 'cheat giveitem "Blueprint\'' . $this->path . '\'" 1 0 false';
	}
	
	protected static function GetFromResults(BeaconRecordSet $results) {
		if ($results === null || $results->RecordCount() === 0) {
			return array();
		}
		
		$engrams = array();
		while (!$results->EOF()) {
			$engram = self::GetFromResult($results);
			if ($engram !== null) {
				$engrams[] = $engram;
			}
			$results->MoveNext();
		}
		return $engrams;
	}
	
	protected static function GetFromResult(BeaconRecordSet $results) {
		$engram = new static();
		$engram->path = $results->Field('path');
		$engram->class_string = $results->Field('class_string');
		$engram->label = $results->Field('label');
		$engram->availability = $results->Field('availability');
		$engram->can_blueprint = $results->Field('can_blueprint');
		$engram->mod_id = $results->Field('mod_workshop_id');
		$engram->mod_name = $results->Field('mod_name');
		return $engram;
	}
	
	public static function GetAll() {
		$database = BeaconCommon::Database();
		$results = $database->Query(self::BuildSQL());
		return self::GetFromResults($results);
	}
	
	public static function GetByClass(string $class) {
		$database = BeaconCommon::Database();
		$results = $database->Query(self::BuildSQL('engrams.class_string = ANY($1)'), '{' . $class . '}');
		return self::GetFromResults($results);
	}
	
	public static function GetByUID(string $hash) {
		$database = BeaconCommon::Database();
		$results = $database->Query(self::BuildSQL('MD5(LOWER(engrams.path)) = ANY($1)'), '{' . $hash . '}');
		return self::GetFromResults($results);
	}
	
	public static function GetByModID(string $mod_id) {
		$database = BeaconCommon::Database();
		if ($mod_id === '') {
			$results = $database->Query(self::BuildSQL('engrams.mod_id IS NULL'));
		} else {
			$results = $database->Query(self::BuildSQL('mods.workshop_id = ANY($1)'), '{' . $mod_id . '}');
		}
		return self::GetFromResults($results);
	}
	
	protected static function BuildSQL(string $clause = '') {
		$sql = 'SELECT engrams.path, engrams.class_string, engrams.label, engrams.availability, engrams.can_blueprint, mods.workshop_id AS mod_workshop_id, mods.name AS mod_name FROM engrams LEFT JOIN mods ON (engrams.mod_id = mods.mod_id) WHERE (engrams.min_version IS NULL OR engrams.min_version <= (SELECT build_number FROM updates ORDER BY build_number DESC LIMIT 1))';
		if ($clause !== '') {
			$sql .= ' AND ' . $clause;
		}
		$sql .= ' ORDER BY engrams.label;';
		return $sql;
	}
	
	public function jsonSerialize() {
		$environments = array();
		if ($this->AvailableToIsland()) {
			$environments[] = 'Island';
		}
		if ($this->AvailableToScorched()) {
			$environments[] = 'Scorched';
		}
		if ($this->AvailableToCenter()) {
			$environments[] = 'Center';
		}
		if ($this->AvailableToRagnarok()) {
			$environments[] = 'Ragnarok';
		}
		if ($this->AvailableToAbberation()) {
			$environments[] = 'Abberation';
		}
		
		$uid = md5(strtolower($this->path));
		
		return array(
			'path' => $this->path,
			'class' => $this->class_string,
			'label' => $this->label,
			'environments' => $environments,
			'can_blueprint' => $this->can_blueprint,
			'spawn' => $this->SpawnCode(),
			'uid' => $uid,
			'resource_url' => BeaconAPI::URL('/engram.php/' . $uid),
			'mod_id' => $this->mod_id,
			'mod_name' => $this->mod_name
		);
	}
	
	public static function ClassFromPath(string $path) {
		$components = explode('/', $path);
		$tail = array_pop($components);
		$components = explode('.', $tail);
		$class = array_pop($components);
		return $class . '_C';
	}
}

?>