<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "JOGADOR".
 *
 * @property integer $ID
 * @property string $Nome
 * @property integer $Fase
 * @property integer $IdSala
 * @property integer $player
 */
class Jogador extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'JOGADOR';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['Nome', 'Fase', 'IdSala', 'player'], 'required'],
            [['Fase', 'IdSala', 'player'], 'integer'],
            [['Nome'], 'string', 'max' => 40],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'ID' => 'ID',
            'Nome' => 'Nome',
            'Fase' => 'Fase',
            'IdSala' => 'Id Sala',
            'player' => 'Player',
        ];
    }
}
