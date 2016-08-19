<?php

namespace Equipamento;

class Equipamento{
	private $ligado;

	public liga(){
		$this->$ligado = true;
	}
	public desliga(){
		$this->ligado = false;
	}

}



?>