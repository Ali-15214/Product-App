package spring.Product_App_Project.Dao;

import spring.Product_App_Project.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class ProductDao {

//here to check when IOC run before client request  // see detail muna bhai book spring framework me Spring MVC Basic note
    ProductDao()
    {
        System.out.println("ProductDao");
    }

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public  void createProduct(Product product){
        this.hibernateTemplate.saveOrUpdate(product);
    }


    //get all product
    public List<Product> getProducts(){
      List<Product> products=  this.hibernateTemplate.loadAll(Product.class);

      return products;
    }

@Transactional
    public void deleteProduct(int id){
        Product product=this.hibernateTemplate.load(Product.class, id);
        this.hibernateTemplate.delete(product);
    }

    public Product getProduct( int id){
        Product product=  this.hibernateTemplate.get(Product.class,id);

        return product;
    }



}
