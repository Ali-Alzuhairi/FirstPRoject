import { LightningElement } from "lwc";
export default class Practice33 extends LightningElement {

    mapMarkers = [
        {
            location: {
                City: 'San Francisco',
                Country: 'USA',
                PostalCode: '94105',
                State: 'CA',
                Street: 'The Landmark @ One Market, Suite 300',
            },
            value: 'location001',
            title: 'The Landmark Building',
            description:
                'This is my awesome description',
            icon: 'standard:account',
        },
        {   
            location: {
                City: 'San Francisco',
                Country: 'USA',
                PostalCode: '94105',
                State: 'CA',
                Street: '415 Mission St',
            },
            value: 'location002',
            title: 'Salesforce',
            description:
                'This is my awesome description for salesforce HQ',
            icon: 'standard:account',
        }
    ];


}