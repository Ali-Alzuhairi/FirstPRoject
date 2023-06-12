import { LightningElement } from "lwc";
import { NavigationMixin } from 'lightning/navigation';

export default class Practice31 extends NavigationMixin(LightningElement) {



    handleNavigateToHome() {
        console.log('Navigating to Home Page');

        // use the method from NavigationMixin in this way 
        // this[NavigationMixin.Navigate]( PageReference )
        // PageReference Doc
        //https://developer.salesforce.com/docs/component-library/documentation/en/lwc/lwc.reference_page_reference_type

        this[NavigationMixin.Navigate]( {
            type: 'standard__namedPage',
            attributes: {
                pageName: 'home'
            }
        } ); 
        
    }

    handleNavigateToCustomTab() {
        
        // lwc-nav-TheTypeOfPage you want to go 
        this[NavigationMixin.Navigate]({
            type: 'standard__navItemPage',
            attributes: {
                apiName: "Day_1"
            }
        });

    }


    handleNavigateToCaseHome(){
        //lwcNav
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                //actionName:"home"
                actionName: "home",
                objectApiName: "Case"
            },
            state:{
                filterName :"00BDn00000IfgbBMAR"
            }

        });

    }


    handleNavigateToAccountCreation(){

        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                actionName: "new",
                objectApiName: "Account"
            },
            state: {
                defaultFieldValues : "Name=DefaultName,Phone=123456789"
            }
        });
    }

    handleNavigateToRecordPage(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                actionName: "edit",
                recordId: "003Dn000009yGasIAE",
                objectApiName: "Contact"
            }
        });
    }

}