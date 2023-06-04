import { LightningElement, wire } from "lwc";
import getAccountWithAnnualRevenue from "@salesforce/apex/AccountController.getAccountWithAnnualRevenue";
export default class Homework3 extends LightningElement {
  accounts;
  error;

  columns = [
    { label: "Account Name", fieldName: "Name" },
    { label: "Annual Revenue", fieldName: "AnnualRevenue" }
  ];

  get filteredAccount() {
    // if there is data to return , return filtered result
    if (this.accounts) {
      return this.accounts.filter((each) => each.AnnualRevenue);
    }
    //   or return empty array
    return [];
  }

  @wire(getAccountWithAnnualRevenue)
  myWiredAccountsOrCallItAnything({ data, error }) {
    // destructing the result we got from apex into data and error variable using destructing syntax

    if (data) {
      this.accounts = data;
      this.error = undefined;
    } else if (error) {
      this.error = error;
      this.data = undefined;
    }
  }
}
