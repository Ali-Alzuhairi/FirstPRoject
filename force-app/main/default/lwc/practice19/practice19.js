import getAccountByName from "@salesforce/apex/AccountController.getAccountByName";
import { LightningElement , wire} from "lwc";
export default class Practice19 extends LightningElement {

    searchInput = 'GenePoint';

   
    // person = {
    //     firstName : 'Ahmed',
    //     lastName : 'A',
    //     age: 18, 
    //     company: {
    //         name: 'Tesla',
    //         state: 'Texas'
    //     }
    // }; 
    
    // get prettyPerson() {
    //     return JSON.stringify(this.person, null, 2);
    // }

    // wire the result of getAccountByName 
    // into property called theAccount

    handleSearchChange(event) {
        this.searchInput = event.target.value; 
    }
    
    @wire(getAccountByName, {accName: '$searchInput'} )
    theAccount; 

    get theAccountInStr() {
        return JSON.stringify(this.theAccount, null, 2); 
    }


}