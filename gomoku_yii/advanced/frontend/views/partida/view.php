<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $model common\models\Partida */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Partidas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

/*$this->title = $model->user1->username . " X ";
$this->title .= $model->user2?$model->user2->username:"...";
$this->params['breadcrumbs'][] = ['label' => 'Partidas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
*/
// Insiro os estilos CSS criados para a aplicação feita em javascript
$this->registerCssFile('css/estilos.css');

// Carrego o javascript do jogo
$this->registerJsFile('js/gmk.js');

/*if (!$vencedor) {
    $this->registerJs('
    setInterval(function() {
        recarregar = document.getElementById("recarregar");
        recarregar.click();
    }, 1000);
');
}*/
?>
<div class="partida-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <!--<p
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    /p>-->

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            //'id',
            'id_user_1',
            'id_user_2',
            'vencedor',
        ],
    ])
    ?>

    <?php Pjax::begin(); ?>
        <div>
            <?= Html::a('Recarregar',['partida/view','id'=>$model->id],['id'=>'recarregar','style'=>'display:none']) ?>
            <h1><?= Html::encode($this->title) ?></h1>
            <!--?= Html::img('img/0.png',['style'=>'width:35px'])?-->
            <?php
                echo "<table border = '1'>";
                for($i=0; $i<15; $i++) {
                    echo "<tr>";
                    for ($j=0; $j < 15; $j++){
                        echo "<td>";
                        echo Html::img('img/0.png',['style'=>'width:30px']); //'id'=>$model->id,'linha'=>$i,'coluna'=>$j]);
                        echo "</td>";
                    }

                    echo "<tr>";
                }
                echo "</table>";
            ?>
        </div>

        <div style="text-align: center">
            <img id="jogador_1" class="jogador" src="img/1.png" width=32 />
            <img id="jogador_2" class="jogador" src="img/2.png" width=32 />
        </div>
    <?php Pjax::end(); ?>

</div>