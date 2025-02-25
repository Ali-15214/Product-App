package spring;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 * Spring is taking control and creating the DS object for us
 * here web.xml file name change into Config.xml
 * this is class specifically for the Product_App_Project because WebConfig.xml change into WebConfig
 * other all Package work with web.xml, so must change the name Config.xml to web.xml
 */

public class LCAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        System.out.println("this approach run");
        Class arr[]={WebConfig.class};
        return arr;
    }

    @Override
    protected String[] getServletMappings() {
        String map[]={"/"};
        return map;
    }
}
