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

    public function testCrieUmArray()
    {
        
        $array = [];

        $this->assertIsArray($array);
        
    }
   
    public function testCrieUmArrayComSeteNumeros()
    {
        
        $array = [4,2,3,8,5,20,12];

        $this->assertIsArray($array);

        return $array;
    }
    
    /**
    * @depends testCrieUmArrayComSeteNumeros
    */
    public function testImprimaUmNumeroComAPosicaoTres($array)
    {
        $this->assertEquals(3, $array[2]);
    }

    /**
    * @depends testCrieUmArrayComSeteNumeros
    */
    public function testCrieUmaVariavelComAsPosicoesSeparadosPorVirgula($array)
    {
        $stringJoin = join(',', $array);

        $this->assertEquals('4,2,3,8,5,20,12', $stringJoin);

        return $stringJoin;
    }
    /**
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
    * @depends testCrieUmArrayComSeteNumeros
    **/
    public function testRemoveDoArrayAPosicaoAtualSeForMenorQueAAnterior($array)
    {
        $this->assertTrue(true);
    }

    /**
    * @depends testCrieUmArrayComSeteNumeros
    **/
    public function testRemovaAUltimaPosicaoDesteArray($array)
    {
        
        $ultimo = array_key_last($array);
        unset($array[$ultimo]);

        $this->assertEquals(6, count($array));
    }

    /**
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
    * @depends testCrieUmArrayComSeteNumeros
    **/
    public function testInvertaAsPosicoesDesteArray($array)
    {
        $array = array_reverse($array);
        $this->assertEquals('12,20,5,8,3,2,4', join(',', $array));
    }
}
