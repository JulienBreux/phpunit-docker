<?php
/**
 * To run this tests, just execute:
 * 'cd .. && make phpunit-test'
 * (from the root of this repository)
 */
declare(strict_types=1);

namespace Test;

/**
 * Class Cat
 *
 * @package Test
 */
class Cat
{
    private $name;

    public function __construct(String $name)
    {
        $this->name = $name;
    }

    public function getName(): String
    {
      return $this->name;
    }
}

/**
 * Class CatTest
 *
 * @package Test
 */
class CatTest extends \PHPUnit_Framework_TestCase
{
    public function testHaveName()
    {
        $cat = new Cat('Frisbee');
        $this->assertEquals('Frisbee', $cat->getName());
    }
}
