import { LightningElement } from "lwc";
import getOppWithMaxAmount from "@salesforce/apex/OppController.getOppWithMaxAmount";
export default class OppWithHighestAmountV2 extends LightningElement {

    highestOppAmount=0;

    
    handleClick(){
        getOppWithMaxAmount().then(result => {
            console.log(result); // returned data from apex  9999999
            this.highestOppAmount = result; 
        } )  
    }

    
}