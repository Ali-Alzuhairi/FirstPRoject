/**
 * 
 *  Create a child class of Rectangle - class Square 
   * instance fields : 
     - side as Decimal 
   * constructor 
     - 2 arg constructor to set 
       - name, side
       - call parent 3 arg constructor as below
       - super(name,side,side) 
 *  
 */
public class Square extends Rectangle{

    public Decimal side ; 
    //public Decimal area ; 

    public Square(String name, Decimal side) {
        // using Square constructor to 
        super(name, side, side);// this is one way the other way is 
        // this.name   = name;|
        // this.width  = side;|--- this three line will work just like above  super(name, side, side)  
        // this.height = side;|    but we have to do the width,height protected not private so we can use it 
        this.side = side ; 

    }

    public override void draw(){
        System.debug('Drawing awesome Square');
        
    }

}


