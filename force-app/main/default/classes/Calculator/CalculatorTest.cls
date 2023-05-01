/***
 * Test classes are crated just like any other classes
 * It has @isTest ot top of the class
 * The class access modifier can be private
 * Naming convection for the test classes :
 *   YouClassName followed by the word Test
 *   for example Calculator class -->CalculatorTest
 * Test class contains test methods to test stuff
 * Test method follow below syntax
 * It has @isTest annotation on the top to define this is a test method
 * it's private static void method with no parameters
 */

@isTest
private class CalculatorTest {
  @isTest
  static void testAdd() {
    // DO YOUR TESTING HERE
    Decimal actualResult   = Calculator.add(5, 6);
    // I expect this actualResult to be 11
    Decimal expectedResult = 11;
    System.assertEquals(expectedResult, actualResult);
    // Assert.areEqual(expectedResult, actualResult); // we can use this also but idk why not helping
  }

  @isTest
  static void testSubtract() {

    Decimal actualResult   = Calculator.subtract(100, 70);
    Decimal expectedResult = 30;

    System.assertEquals(expectedResult, actualResult);
  }

 
  @isTest
  static void testMultiplication(){

     Decimal actual   = Calculator.multiply(10, 7);
     Decimal expected = 70;

     System.assertEquals(expected,actual);
    // System.assertEquals(expectedResult, actualResult);
    
  }

  @isTest
  static void testDivide(){

     Decimal actual   = Calculator.divide(10, 5);
     Decimal expected= 2;
     // for the below shortCut (sae)
     System.assertEquals(expected,actual);
     
    // System.assertEquals(expectedResult, actualResult);
  }

  @isTest
  static void testDivideByZero(){
    
    Decimal actual   = Calculator.divide(10, 0);
    Decimal expected = 0;
    // for the below shortCut (sae)
    System.assertEquals(expected,actual);
  }
}
