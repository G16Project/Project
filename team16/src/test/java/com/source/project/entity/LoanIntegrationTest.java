package com.source.project.entity;

import javax.validation.ConstraintViolationException;

import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = Loan.class)
public class LoanIntegrationTest {

	 @Test(expected = ConstraintViolationException.class)
	    public void testAccount() {
	        Loan p = new Loan();
	        p.setAccountNumber(null);
	        p.persist();
	        p.flush();
	    }
	 @Test(expected = ConstraintViolationException.class)
	    public void testLength_550() {
	        Loan p = new Loan();
	        p.setAddress("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
	        p.persist();
	        p.flush();
	    }
	 @Test(expected = ConstraintViolationException.class)
	    public void testMoneyLoan() {
	        Loan p = new Loan();
	        p.setMoneyLoan(null);
	        p.persist();
	        p.flush();
	    }
	 @Test(expected = ConstraintViolationException.class)
	    public void testReason() {
	        Loan p = new Loan();
	        p.setReason(null);
	        p.persist();
	        p.flush();
	    }
	 
}
