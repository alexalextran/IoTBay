package unit.test;

 

import java.sql.SQLException;
import junit.framework.Assert;
import uts.isd.controller.InsertProduct;
import org.junit.Test;
import static org.junit.Assert.*;
import uts.isd.controller.DeleteProduct;
import uts.isd.controller.DeleteUser;
import uts.isd.controller.FindUser;
import uts.isd.controller.InsertCustomer;
import uts.isd.controller.ReadCustomer;
import uts.isd.controller.UpdateProduct;
import uts.isd.controller.Validator;
import uts.isd.model.Calculator;
import uts.isd.model.Customer;

 

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
    
     private DeleteProduct deleteProduct;
    private InsertProduct insertProduct;
     private UpdateProduct updateProduct;

     

    public JunitTest() throws ClassNotFoundException, SQLException {

        calculator = new Calculator();
         insertCustomer = new InsertCustomer();
         readCustomer = new ReadCustomer();
         deleteUser = new DeleteUser();
         findUser = new FindUser();
         
          insertProduct = new InsertProduct();
          deleteProduct = new DeleteProduct();
          updateProduct = new UpdateProduct();
         
         
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
      public void testUpdateProduct() throws SQLException{
           String res =  updateProduct.Update(updateProduct.getConnDB(), 21, "Frog Designed Wired Mouse", 7, 50, "mouse");
          Assert.assertEquals("Product record updated successfully",res);
    }
      
      @Test
       public void testDeleteProduct() throws SQLException{
       String res = deleteProduct.delete(deleteProduct.getConnDB(), 21);
        Assert.assertEquals("Product record deleted successfully",res);
    }
}