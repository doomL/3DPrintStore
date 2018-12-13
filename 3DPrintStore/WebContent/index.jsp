<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<jsp:include page="header.jsp"></jsp:include>

<div class="alert text-center cookiealert" role="alert">
    <b>Do you like cookies?</b> &#x1F36A; We use cookies to ensure you get the best experience on our website. <a href="https://cookiesandyou.com/" target="_blank">Learn more</a>

    <button type="button" class="btn btn-primary btn-sm acceptcookies" aria-label="Close">
        I agree
    </button>
</div>

    <header class="content">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          
          <!-- Slide One - Set the background image for this slide in the line below -->
         <div class="carousel-item active">
           <img src="images/banner-3.jpg" alt="...">
           <div class="gradient"></div>
           <div class="carousel-caption">
            <h3>3D Print Store Il sito che cercavi!</h3>
              <h1>Vorresti Stampare un File 3D ma non hai una stampante?</h1>
              <h2>Questo è il posto giusto</h2>
              <h5>Carica il file da te scelto (in Formato STL) scegli il printer più vicino a te e vai a ritirare il pezzo pronto in Giornata!</h5>
              <a class="btn btn-primary" href="print1.jsp" role="button">Stampa Pezzo 3d</a>
              <a class="btn btn-primary" href="print2.jsp" role="button">Inizia A Guadagnare</a>
            </div>
          </div>
          
          <!-- Slide Two - Set the background image for this slide in the line below -->
         <div class="carousel-item">
           <img src="images/banner-1.jpg" alt="...">
           <div class="gradient"></div>
           <div class="carousel-caption">
            <h3>3D Print Store Il sito che cercavi!</h3>
              <h1>La tua stampante 3D non viene usata come vorresti?</h1>
              <h2>Entra nella nostra schiera di Printer ed inizia a trarne profitto</h2>
              <h5>Gli Utenti della tua zona hanno bisogno di te!</h5>
              <a class="btn btn-primary" href="#" role="button">Stampa Pezzo 3d</a>
              <a class="btn btn-primary" href="#" role="button">Inizia A Guadagnare</a>
            </div>
          </div>
          
       
        </div>
        
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

<section class="about">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 heading">
               <div class="icon">
                   <i class="fa fa-linode" aria-hidden="true"></i>
               </div>
            </div>
            <div class="col-sm-12 heading">
                <h3>Tutto quello che devi sapere su 3D Print Store!</h3>
                <h4></h4>
            </div>
        </div>
        <div class="row" data-aos="fade-up">
            <div class="col-sm-4 col1">
                <div class="row">
                    <div class="col-sm-2 box1">
                        <i class="fa fa-desktop" aria-hidden="true"></i>
                    </div>
                    <div class="col-sm-10 inner-content">
                        <h3>design.</h3>
                        <p>Il sito è strutturato in modo semplificato, guidando gli utenti ad effettuare gli acquisti con efficienza. </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col2">
                <div class="row">
                    <div class="col-sm-2 box1">
                        <i class="fa fa-cc-paypal" aria-hidden="true"></i>
                    </div>
                    <div class="col-sm-10 inner-content">
                        <h3>Gestione Pagamenti.</h3>
                        <p>I pagamenti vengono effettuati tramite una moneta interna al sito, il PrintCoin. Il Cliente può contare sul sistema di pagamento sicuro PAYPAL.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col3">
                <div class="row">
                    <div class="col-sm-2 box1">
                        <i class="fa fa-rocket" aria-hidden="true"></i>
                    </div>
                    <div class="col-sm-10 inner-content">
                        <h3>Stampa.</h3>
                        <p>Il Printer riceve il file da stampare appena il pagamento viene effettuato, il pezzo potrebbe eventualmente venir spedito a destinazione. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="blog">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 heading">
                <h3>Simple Steps</h3>
                <h4>I pochi semplici passi che ti permettono di ottenere il tuo pezzo stampato!</h4>
            </div>
        </div>
        <div class="row" data-aos="fade-up">
            <div class="col-lg-6 col-sm-6">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                       <div class="image-one">
                           <img src="images/registration.jpeg" alt="" class="img-thumbnail blog-1">
                       </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
 					    <div class="blog-column1">
 	            		   <h5><a >Registrazione</a></h5>
 						   <p>Effettua la registrazione presso il nostro sito.</p>
 					   </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                       <div class="image-one">
                           <img src="images/conversion.PNG" alt="" class="img-thumbnail blog-1">
                       </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
 					    <div class="blog-column1">
 	            		   <h5><a >Conversione</a></h5>
 						   <p>Converti i tuoi soldi in PrintCoin, che ti permettono di effettuare stampe presso i nostri printer.</p>
 					   </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" data-aos="fade-up">
            <div class="col-lg-6 col-sm-6">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                       <div class="image-one">
                           <img src="images/upload.PNG" alt="" class="img-thumbnail blog-1">
                       </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
 					    <div class="blog-column1">
 	            		   <h5><a >Invio</a></h5>
 						   <p>Carica il file da te scelto per la stampa, imposta i parametri di stampa, e visualizza il costo di essa.</p>
 					   </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                       <div class="image-one">
                           <img src="images/3d-printer-printing.jpg" alt="" class="img-thumbnail blog-1">
                       </div>
                    </div>
                    <div class="col-lg-6 col-md-12">
 					    <div class="blog-column1">
 	            		   <h5><a>Stampa</a></h5>
 						   <p>Il file viene inviato al centro di stampa più vicino che effettua la stampa secondo i nostri criteri di qualità. </p>
 					   </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="portfolio container">
   <div class="gradient"></div>
       <div class="">
          <div class="main-content">
              <div class="row">
                  <div class="col-lg-12 heading">
                      <h3>Alcuni Lavori svolti dai nostri Printer</h3>
                      <h4>Revisionati dal nostro servizio, stampati a regola d'arte</h4>
                  </div>
              </div>
              <div class="row">
                  <div id="recipeCarousel" class="carousel slide w-100" data-ride="carousel">
                      <div class="carousel-inner w-100" role="listbox">
                          <div class="carousel-item active">
                              <a  data-toggle="lightbox" data-gallery="example-gallery" class="d-block col-sm-4 col-12 box">
                                 <img src="images/portfolio-4.jpg" class="img-fluid">
                                 <div class="overlay">
                                  <div class="text">Anello con Leone</div>
                                 </div>
                              </a>
                          </div>
                          <div class="carousel-item">
                          <a  data-toggle="lightbox" data-gallery="example-gallery" class="d-block col-sm-4 col-12 box">
                                 <img src="images/portfolio-3.jpg" class="img-fluid">
                                 <div class="overlay">
                                  <div class="text">TreeMonster</div>
                                 </div>
                              </a>
                          </div>
                          <div class="carousel-item">
                              <a  data-toggle="lightbox" data-gallery="example-gallery" class="d-block col-sm-4 col-12 box">
                                 <img src="images/portfolio-5.jpg" class="img-fluid">
                                 <div class="overlay">
                                  <div class="text">Liberator 3D Printed Gun</div>
                                 </div>
                              </a>
                          </div>
                
                
                      </div>
                      <a class="carousel-control-prev" href="#recipeCarousel" role="button" data-slide="prev">
                          <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                          <span class="sr-only">Previous</span>
                      </a>
                      <a class="carousel-control-next" href="#recipeCarousel" role="button" data-slide="next">
                          <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                          <span class="sr-only">Next</span>
                      </a>
                  </div>
              </div>
          </div>
       </div>
</section>


<jsp:include page="footer.jsp"></jsp:include>

  </body>
</html>