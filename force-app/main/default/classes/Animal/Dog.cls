public class Dog extends Animal{
    // breed 
    public String breed ;
    // constrictor to set 3 field value 
    public Dog(String name , Integer age, String breed) {
        super(name,age);
        this.breed = breed;

    }

    // and overridden makeNoise method 

    public override void makeNoise(){
        System.debug('Dog will Bark : Woof!!');
        
    }

    public override String getInfo(String food){

        return 'Dog name '+ this.name +' Eating '+ food ;
    }
}