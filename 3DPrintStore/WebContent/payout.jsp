<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html>
<html>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<jsp:include page="header.jsp"></jsp:include>
 <body>
    <header class="banner">
         <div class="gradient"></div>
          <div class="container">
              <div class="row">
                 <div class="col-sm-12 heading">
                    <h1 data-aos="fade-right" data-aos-delay="300">Print Coin Conversion</h1>
                    <h2 data-aos="fade-left" data-aos-delay="300">Scambia PrintCoin per Euro</h2>
                 </div>  
              </div>
          </div>
    </header>

<section class="blog-page">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 heading">
                <h2> Pagamenti</h2>
            </div>
        </div>
    </div>
    <hr/>
   
   <!--<div class="row justify-content-md-center">
  <div class="col-md-12">
      <div class="card-body ">
        <div class="form-group">
          <input id="aninput" class="integer form-control" type="text" placeholder="Integer Number" />
        </div>
      </div>
    </div>
</div> -->

<div>
  <div class="container">
  <h2>Inserisci Email Account Paypal</h2>
     <div class="container py-5">
      <div class="row" data-aos="fade-up" data-aos-duration="800">
          <div class="col-md-12">
                  <div class="form-group row">
                      <div class="col-xs-6 col-md-6">
						<div class="form-group">
          					<input id="email" class="form-control" type="email" placeholder="Inserisci Email Account Paypal" />
        				</div>
        					
        				    <input onclick="sendPayout();" type="submit" class="btn btn-primary aos-init aos-animate">
        				    </div>
        				    </div>
        			  </div>
                  </div>
          </div>
      </div>
    </div>
        
</section>
<jsp:include page="footer.jsp"></jsp:include>


  </body>
</html>