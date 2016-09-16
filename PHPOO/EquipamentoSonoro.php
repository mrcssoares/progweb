<?php
namespace Equipamento\Sonoro;

class EquipamentoSonoro extends Equipamento{
	private $volume;
	private $stereo;

	public mono(){
		$this->$stereo = false;
	}

	public stereo(){
		$this->$stereo = true;
	}
	public setVolume($valor){
		if( ($valor>0) && ($valor<10) ){
			$volume = $valor;
		}
	}
	public liga(){
		parent::liga();
		$volume = 5;
	}
}

?>