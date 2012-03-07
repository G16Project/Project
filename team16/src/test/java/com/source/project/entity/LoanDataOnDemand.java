package com.source.project.entity;

import org.springframework.roo.addon.dod.RooDataOnDemand;

@RooDataOnDemand(entity = Loan.class)
public class LoanDataOnDemand {

	public void setAccountNumber(Loan obj, int index) {
        String accountNumber = null;
        obj.setAccountNumber(accountNumber);
    }

	public void setAddress(Loan obj, int index) {
        String address = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" + index;
        if (address.length() > 500) {
            address = address.substring(0, 500);
        }
        obj.setAddress(address);
    }

	public void setMoneyLoan(Loan obj, int index) {
        String moneyLoan = null;
        obj.setMoneyLoan(moneyLoan);
    }

	public void setReason(Loan obj, int index) {
        String reason = null;
        obj.setReason(reason);
    }
}
