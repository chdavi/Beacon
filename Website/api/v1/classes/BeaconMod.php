<?php

class BeaconMod implements JsonSerializable {
	protected $mod_id = '';
	protected $workshop_id = '';
	protected $name = '';
	protected $confirmed = false;
	protected $confirmation_code = '';
	protected $pull_url = null;
	protected $last_pull_hash = null;
	
	public function ModID() {
		return $this->mod_id;
	}
	
	public function WorkshopID() {
		return $this->workshop_id;
	}
	
	public function Name() {
		return $this->name;
	}
	
	public function Confirmed() {
		return $this->confirmed;
	}
	
	public function ConfirmationCode() {
		return $this->confirmation_code;
	}
	
	public function PullURL() {
		return $this->pull_url;
	}
	
	public function LastPullHash() {
		return $this->last_pull_hash;
	}
	
	public function AttemptConfirmation() {
		$workshop_item = BeaconWorkshopItem::Load($this->workshop_id);
		if ($workshop_item === null) {
			return false;
		}
		if (BeaconCommon::InDevelopment() || $workshop_item->ContainsString($this->confirmation_code)) {
			$database = BeaconCommon::Database();
			$database->BeginTransaction();
			$database->Query('UPDATE mods SET confirmed = TRUE WHERE mod_id = $1;', $this->mod_id);
			$database->Commit();
			$this->confirmed = true;
			return true;
		}
		
		return false;
	}
	
	public function Delete() {
		$database = BeaconCommon::Database();
		$database->BeginTransaction();
		$database->Query('DELETE FROM mods WHERE mod_id = $1;', $this->mod_id);
		$database->Commit();
	}
	
	protected static function GetFromResults(BeaconRecordSet $results) {
		if ($results === null || $results->RecordCount() === 0) {
			return array();
		}
		
		$mods = array();
		while (!$results->EOF()) {
			$mod = self::GetFromResult($results);
			if ($mod !== null) {
				$mods[] = $mod;
			}
			$results->MoveNext();
		}
		return $mods;
	}
	
	protected static function GetFromResult(BeaconRecordSet $results) {
		$mod = new static();
		$mod->mod_id = $results->Field('mod_id');
		$mod->workshop_id = $results->Field('workshop_id');
		$mod->name = $results->Field('name');
		$mod->confirmed = $results->Field('confirmed');
		$mod->confirmation_code = $results->Field('confirmation_code');
		$mod->pull_url = $results->Field('pull_url');
		$mod->last_pull_hash = $results->Field('last_pull_hash');
		return $mod;
	}
	
	public static function GetByWorkshopID(string $user_id, string $workshop_id) {
		$database = BeaconCommon::Database();
		$results = $database->Query(self::BuildSQL('user_id = $1 AND workshop_id = ANY($2)'), $user_id, '{' . $workshop_id . '}');
		return self::GetFromResults($results);
	}
	
	public static function GetAll(string $user_id) {
		$database = BeaconCommon::Database();
		$results = $database->Query(self::BuildSQL('user_id = $1'), $user_id);
		return self::GetFromResults($results);
	}
	
	public static function GetPullMods() {
		$database = BeaconCommon::Database();
		$results = $database->Query(self::BuildSQL('confirmed = TRUE AND pull_url IS NOT NULL'));
		return self::GetFromResults($results);
	}
	
	protected static function BuildSQL(string $clause = '') {
		$sql = 'SELECT mod_id, workshop_id, name, confirmed, confirmation_code, pull_url, last_pull_hash FROM mods';
		if ($clause !== '') {
			$sql .= ' WHERE ' . $clause;
		}
		$sql .= ' ORDER BY name;';
		return $sql;
	}
	
	public function jsonSerialize() {
		return array(
			'mod_id' => $this->workshop_id,
			'name' => $this->name,
			'workshop_url' => BeaconWorkshopItem::URLForModID($this->workshop_id),
			'confirmed' => $this->confirmed,
			'confirmation_code' => $this->confirmation_code,
			'resource_url' => BeaconAPI::URL('/mod.php/' . $this->workshop_id),
			'confirm_url' => BeaconAPI::URL('/mod.php/' . $this->workshop_id . '?action=confirm'),
			'engrams_url' => BeaconAPI::URL('/engram.php?mod_id=' . $this->workshop_id),
			'spawncodes_url' => BeaconCommon::AbsoluteURL('/spawn/?mod_id=' . $this->workshop_id),
			'pull_url' => $this->pull_url
		);
	}
}

?>