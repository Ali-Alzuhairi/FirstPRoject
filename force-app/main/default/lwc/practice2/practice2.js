import { LightningElement } from 'lwc';

export default class Practice2 extends LightningElement {

    firstName = "Ali";
    lastName  = "Snow";

    // getter is type of function 
    // that return value 
    // usually used for getting calculated result 
    // from the fields instead of creating new fields 
    get fullName(){
        //return this.firstName + ' '+ this.lastName;
        return `${this.firstName} ${this.lastName}`;
    }

    //add a function | method called handleClick 
    // this method will get executed when the button is clicked 
    // since we have onclick

     handleClick() {
        console.log('Button is Clicked');
        this.firstName = 'Clark';
        this.lastName  = 'Kent';
     }
}