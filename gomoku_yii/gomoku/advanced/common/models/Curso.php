<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "curso".
 *
 * @property integer $id
 * @property string $nome
 * @property string $cigla
 * @property string $descricao
 */
class Curso extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'curso';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nome', 'cigla', 'descricao'], 'required', 'message'=>'Este campo é obrigatório'],
            [['descricao'], 'string'],
            [['nome'], 'string', 'max' => 45],
            [['cigla'], 'string', 'max' => 4],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nome' => 'Nome',
            'cigla' => 'Cigla',
            'descricao' => 'Descricao',
        ];
    }
}
