package unit.test;

 

import java.sql.SQLException;
import java.util.List;
import junit.framework.Assert;
import uts.isd.controller.InsertProduct;
import org.junit.Test;
import static org.junit.Assert.*;
import uts.isd.controller.DeleteStaff;
import uts.isd.controller.DeleteUser;
import uts.isd.controller.FetchStaff;
import uts.isd.controller.FindUser;
import uts.isd.controller.InsertCustomer;
import uts.isd.controller.InsertStaff;
import uts.isd.controller.ReadCustomer;
import uts.isd.controller.UpdateStaff;
import uts.isd.controller.Validator;
import uts.isd.model.Calculator;
import uts.isd.model.Customer;
import uts.isd.model.Staff;

 

/**

 *

 * @author Alex Tran 

 */

public class JunitTest {

 

    private Calculator calculator;
    
    private ReadCustomer readCustomer;
    private InsertCustomer insertCustomer;
    private DeleteUser deleteCustomer;
    private Validator validator;
    private DeleteUser deleteUser;
    private FindUser findUser;
    
    private InsertProduct insertProduct;
    private InsertStaff insertStaff;
    private DeleteStaff deleteStaff;
    private FetchStaff fetchStaff;
    private UpdateStaff updateStaff;
    
    public JunitTest() throws ClassNotFoundException, SQLException {

        calculator = new Calculator();
         insertCustomer = new InsertCustomer();
         insertProduct = new InsertProduct();
         readCustomer = new ReadCustomer();
         deleteUser = new DeleteUser();
         findUser = new FindUser();
         insertStaff = new InsertStaff();
         fetchStaff = new FetchStaff();
         updateStaff = new UpdateStaff();
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
    
    @Test
    
    public void testReadCustomer() throws SQLException{
        Customer res =  readCustomer.Read(readCustomer.getConnDB(), "steve@gmail.com", "vibranium");
        Assert.assertEquals("Steve Rogers", res.getName());
    }
    
    @Test
    public void testReadCustomerWrong() throws SQLException{
        Customer res =  readCustomer.Read(readCustomer.getConnDB(), "steve@hotmail.com", "vib");
        assertNull(res);
    }
    
    
       @Test
    
    public void testDeleteCustomer() throws SQLException{
        Customer customer = findUser.Find(findUser.getConnDB(), "Steve Rogers", "steve@gmail.com", "vibranium", "11118888");
        String res =  deleteUser.Delete(deleteUser.getConnDB(), customer.getId());
        Assert.assertEquals("Customer deleted successfully",res);
    }
            
      @Test
       
      public void testInsertProduct() throws SQLException{
        String res =  insertProduct.Insert(insertProduct.getConnDB(), "Frog Designed Wired Mouse", 7, "mouse", 50);
       Assert.assertEquals("Product added successfully",res);
    }
         @Test
       
    public void testInsertStaff() throws SQLException{
        String res =  insertStaff.Insert(insertStaff.getConnDB(), "Aliza", "Faisal", "alizafaixal@gmail.com", "Developer", "6 Test Rd", "alizafaisal", "123", true, "07654389");
       Assert.assertEquals("Staff added successfully",res);
    }
    public void testDeleteStaff(int id) throws SQLException{
        String res =  deleteStaff.delete(deleteStaff.getConnDB(), id);
       Assert.assertEquals("Staff deleted successfully",res);
    }
      public void testfindStaff(String params) throws SQLException{
        List <Staff> res =  fetchStaff.getStaff(fetchStaff.getConnDB(), params);
      assertNull(res);
    }
    public void testUpdateStaff(int id) throws SQLException{
        String res =  updateStaff.Update(updateStaff.getConnDB(), id, "Aleeza", "Faisall", "alizafaisal@gmail.com", " Web Developer", "6 Test Rd, Plumpton", "alizafaixal", "1234", true, "07654389");
       Assert.assertEquals("Staff record updated successfully",res);
    }
      
}