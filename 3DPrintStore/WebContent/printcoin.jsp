<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://www.paypalobjects.com/api/checkout.js"></script>
 <script src="https://unpkg.com/sweetalert2@7.12.12/dist/sweetalert2.all.js"></script>
 <script src="js/paypalButtons.js"></script>
 
 <body>
    <header class="banner">
         <div class="gradient"></div>
          <div class="container">
              <div class="row">
                 <div class="col-sm-12 heading">
                    <h1 data-aos="fade-right" data-aos-delay="300">Print Coin Conversion</h1>
                    <h2 data-aos="fade-left" data-aos-delay="300">Scambia Euro Per Print Coin</h2>
                 </div>  
              </div>
          </div>
    </header>

<section class="blog-page">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 heading">
                <h2>Ottieni Print Coin</h2>
            </div>
        </div>
    </div>
    <hr/>
    <div class="container">
        <div class="row" data-aos="fade-up" data-aos-delay="300">
            <div class="col-lg-6 col-sm-6">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                       <div class="image-one">
                           <img src="images/layer1.png" alt="" class="img-thumbnail blog-1">
                             <div class="text-block"> 
                               <h4><a href="blog_single.html">5 Euro</a></h4>
                             </div>
                             <div id="paypal-button5"></div>             
                       </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
 					    <div class="blog-column1">
 	            		   <h5><a href="blog_single.html">500 PrintCoin</a></h5>
 						   <p>Converti Euro in PrintCoin Per Stampare File 3D</p>
 					   </div>
                    </div>
                    

                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                       <div class="image-one">
                           <img src="images/layer2.png" alt="" class="img-thumbnail blog-1">
                             <div class="text-block"> 
                               <h4><a href="blog_single.html">10 Euro</a></h4>
                             </div>
                    <div id="paypal-button10"></div>
                       </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
 					    <div class="blog-column1">
 	            		   <h5><a href="blog_single.html">1.000 PrintCoin</a></h5>
 						   <p>Converti Euro in PrintCoin Per Stampare File 3D</p>
 					   </div>
                    </div>
          
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                       <div class="image-one">
                           <img src="images/layer3.png" alt="" class="img-thumbnail blog-1">
                             <div class="text-block"> 
                               <h4><a href="blog_single.html">20 Euro</a></h4>
                             </div>
                    <div id="paypal-button20"></div>
                       </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
 					    <div class="blog-column1">
 	            		   <h5><a href="blog_single.html">2.000 PrintCoin</a></h5>
 						   <p>Converti Euro in PrintCoin Per Stampare File 3D</p>
 					   </div>
                    </div>
        
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                       <div class="image-one">
                           <img src="images/layer4.png" alt="" class="img-thumbnail blog-1">
                             <div class="text-block"> 
                               <h4><a href="blog_single.html">50 EURO</a></h4>
                             </div>
                <div id="paypal-button50"></div>
                       </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
 					    <div class="blog-column1">
 	            		   <h5><a href="blog_single.html">5.000 PrintCoin</a></h5>
 						   <p>Converti Euro in PrintCoin Per Stampare File 3D</p>
 					   </div>
                    </div>
                </div>
  
            </div>
        </div>
        
        <div class="pages">
        <a class="btn btn-primary aos-init aos-animate" href="printcoin2.jsp" role="button" data-aos="fade-right" data-aos-delay="300">Inverti</a>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp"></jsp:include>


  </body>
</html>