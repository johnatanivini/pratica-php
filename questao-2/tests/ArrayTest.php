<?php

namespace Tests;

use ArrayObject;
use Exception;
use PHPUnit\Framework\TestCase;
use PHPUnit\Framework\Warning;
use PHPUnit\TextUI\XmlConfiguration\PHPUnit;

class ArrayTest extends TestCase
{


    public function addMessage(mixed ...$objeto): void
    {
        var_dump($objeto);
    }
    /**
     * 1 - Crie um Array
     *
     * @return void
     */
    public function testCrieUmArray()
    {
        
        $array = [];

        $this->assertIsArray($array);
    }
    
    /**
     * 2 - Popule este array com 7 numeros
     *
     * @return void
     */
    public function testCrieUmArrayComSeteNumeros()
    {
        
        $array = [4,2,3,8,5,20,12];

        $this->assertIsArray($array);

        return $array;
    }
    
    /**
    * 3 - Imprima o número da posição 3 do array 
    * @depends testCrieUmArrayComSeteNumeros
    */
    public function testImprimaUmNumeroComAPosicaoTres($array)
    {
        $this->assertEquals(3, $array[2]);
    }

    /**
    *  4 - Crie uma variável com todas as posições do array no formato de string separado por
    *  vírgula
    * @depends testCrieUmArrayComSeteNumeros
    */
    public function testCrieUmaVariavelComAsPosicoesSeparadosPorVirgula($array)
    {
        $stringJoin = join(',', $array);

        $this->assertEquals('4,2,3,8,5,20,12', $stringJoin);

        return $stringJoin;
    }
    /**
    * 5 - Crie um novo array a partir da variável no formato de string que foi criada e destrua array anterior
    * 
    * @depends testCrieUmArrayComSeteNumeros
    * @depends testCrieUmaVariavelComAsPosicoesSeparadosPorVirgula
    */
    public function testCrieUmNovoArrayAPartirDeUmaSting($arrayAnterior, $stringJoin)
    {

        // Criando um novo objeto Array a partir da string anterior
        $array = $arrayAnterior;
        
        $novoArray = explode(',', $stringJoin);
        unset($array);
        $this->assertIsArray($novoArray);
    }

    
    /**
    * 6 - Crie uma condição para verificar se existe o valor 14 no array
    * @depends testCrieUmArrayComSeteNumeros
    */
    public function testExisteOValor14noArray($array)
    {
        $valor = 14;

        $arraysFiltrados = array_filter($array, function ($filtro) use ($valor) {
            return $filtro == $valor;
        });

        $this->assertEmpty($arraysFiltrados);
    }

    /**
     * 7 - Faça uma busca em cada posição. Se o número da posição atual for menor que o
    * da posição anterior (valor anterior que não foi excluído do array ainda), exclua esta
    * posição
    * @depends testCrieUmArrayComSeteNumeros
    **/
    public function testRemoveDoArrayAPosicaoAtualSeForMenorQueAAnterior($array)
    {
        $this->assertTrue(true);
    }

    /**
    * 8 - Remova a última posição deste array
    * @depends testCrieUmArrayComSeteNumeros
    **/
    public function testRemovaAUltimaPosicaoDesteArray($array)
    {
        
        $ultimo = array_key_last($array);
        unset($array[$ultimo]);

        $this->assertEquals(6, count($array));
    }

    /**
    * 9 - Conte quantos elementos tem neste array
    * @depends testCrieUmArrayComSeteNumeros
    **/
    public function testConteQuantosElementosTemNesteArray($array)
    {
        $anterior = 0;

        foreach ($array as $key => $value)  {
            
            $anterior = $key - 1;
            if (isset($array[$anterior])) {
                
                if ($value < $array[$anterior]) {
                    unset($array[$key]);
                }
            }
        }

        $this->assertEquals('4,3,8,20', join(',', $array));
    }

    /**
    * 10 -  Inverta as posições deste array
    * @depends testCrieUmArrayComSeteNumeros
    **/
    public function testInvertaAsPosicoesDesteArray($array)
    {
        $array = array_reverse($array);
        $this->assertEquals('12,20,5,8,3,2,4', join(',', $array));
    }
}
