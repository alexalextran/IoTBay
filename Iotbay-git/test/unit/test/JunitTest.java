package unit.test;

 

import java.sql.SQLException;
import junit.framework.Assert;

import org.junit.Test;

import static org.junit.Assert.*;
import uts.isd.controller.InsertCustomer;

import uts.isd.model.Calculator;

 

/**

 *

 * @author Alex Tran 

 */

public class JunitTest {

 

    private Calculator calculator;
    private InsertCustomer insertCustomer;

     

    public JunitTest() throws ClassNotFoundException, SQLException {

        calculator = new Calculator();
         insertCustomer = new InsertCustomer();
    }

 

    @Test

    public void evaluatesExpression() {       

        int sum = calculator.evaluate("1+2+3");

        assertEquals(6, sum);

    }

     

    @Test

    public void testAdd(){

        int res = calculator.add(2,5);

        assertEquals(7,res);

    }

     

    @Test

    public void testSub(){

        int res = calculator.subtract(5,3);

        assertEquals(2,res);

    }

     

    @Test

    public void testMul(){

        int res = calculator.mul(2,4);

        assertEquals(8,res);

    }

     

    @Test

    public void testPow(){

        double res = calculator.power(2, 3);

        Assert.assertEquals(8.00,res,0.001);

    }
    
    
    @Test
    
    public void testInsertCustomer() throws SQLException{
        String res =  insertCustomer.Insert(insertCustomer.getConnDB(), "Steve Rogers", "steve@gmail.com", "vibranium", "11118888");
       Assert.assertEquals("Customer added successfully",res);
    }

}