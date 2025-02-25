<%
// but here use this becuase by default this page run...,when use WebConfig,for checking purpose other wise separate projectap.jsp file exist for   web.xml and MyWebAppIntializer
//this page forcefully execute. as start project run this page,, use wel_come-file tag use in web.xml
// this way direct request to controller, home page run
  response.sendRedirect("product_home");
  %>