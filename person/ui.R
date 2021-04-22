library(shiny)


shinyUI(

  navbarPage("Wei Jiang",
           
           theme = shinythemes::shinytheme("cerulean"),
           collapsible = TRUE,
           fluid = TRUE,
           position = "fixed-top",
           
           tabPanel("home", icon = icon("home"),
                    
                    tags$head(
                      
                      shinyjs::useShinyjs(),
                      includeCSS("style_my.css")
                      
                      
                    ),
                    
                    
                    fluidRow(
                      
                      tags$header(     
                        
                        HTML('
                
                <header class="masthead">
                <div class="container">
                <div class="intro-text">
                <span class="name">I am Wei Jiang</span>
                <hr>
                <span class="subname">An expericneced bioinformatic scientist expert in <strong>R</strong>.</span>
                </div>
                </div>
                </header>         
                <section class="success" id="about">
                <div class="container">
                <h2 class="text-center">Who am I? </h2>
                <br>
                <br>
                <div class="row">
                <div class="col-lg-6">
                <p>Graduated from North China Electricity Power University, Beijing with a master in 
                applied mathematics at April 2018, have deep understanding in complex network, much 
                knowledge in machine learning in small datasets and a great deal of experience of 
                Shiny app development and AWS cloud computing on genomics data.</p>
                </div>
                <div class="col-lg-6">
                <p>Mathematic background, interested in cancer research, currently working in Gensript biotechnology Inc. , 
                Nanjing, PRC. As a bioinformatic scientist, currently working on bio-data especially next generation sequence data 
                analysis and automation of data processing to make research easy.</p>
                </div>
                
                </div>
                </div>
                </section>
         
                ')
                        
                      )
                    ),
              
                    fluidRow(
                      
                      column(width = 4,
                             
                             br(),
                             img(src='tiaa.jpg', align = "left",  width = 400, height = 300)
                             
                             
                      ),    
                      
                      column(width = 8, 
                             
                             br(),
                             br(),
                             br(),
                             
                             HTML('
      
                
                <blockquote class="blockquote blockquote-reverse">
                <p>Graduated from North China Electricity Power University, Beijing with a master in 
                applied mathematics at April 2018, have deep understanding in complex network, much 
                knowledge in machine learning in small datasets and a great deal of experience of 
                Shiny app development and AWS cloud computing on genomics data.</p></blockquote>
     
                
              ')
                             
                      )
                      
                    ),
                    
                    
                    fluidRow(
                      
                      column(width = 8,
                             
                             br(),
                             br(),
                             br(),
                             
                             HTML('
      
                
                <blockquote class="blockquote">
                <p>Mathematic background, interested in cancer research, currently working in Gensript biotechnology Inc. , 
                Nanjing, PRC. As a bioinformatic scientist, currently working on bio-data especially next generation sequence data 
                analysis and automation of data processing to make research easy.</p>
                </blockquote>
                
                
              ')   
                             
                             
                      ),
                      
                      column(width = 4,
                             
                             
                             br(),
                             img(src='usbank.jpg', align = "right",  width = 400, height = 300)
                             
                      )
                    ),
                    
                    
                    fluidRow(
                      
                      column(width = 4,
                             
                             br(),
                             img(src='lions.jpg', align = "left",  width = 400, height = 300)
                             
                             
                      ),    
                      
                      column(width = 8, 
                             
                             br(),
                             br(),
                             br(),
                             
                             HTML('
      
                
                <blockquote class="blockquote blockquote-reverse">
                <p>Mathematic background, interested in cancer research, currently working in Gensript biotechnology Inc. , 
                Nanjing, PRC. As a bioinformatic scientist, currently working on bio-data especially next generation sequence data 
                analysis and automation of data processing to make research easy.
                欢迎光临！
                </p></blockquote>
                <blockquote class="blockquote blockquote-reverse">
                <i>"All the past is the prologue of future."</i>
                <footer class="blockquote-footer"><cite title="Source Title">Shakespeare</cite></footer>
                </blockquote>
     
                
              ')
                             
                      )  
                      
                      
                    ),
                    
                    
                    
                    
                    
                    fluidRow(
                      
                      
                      HTML('
                
                <footer class="footer-distributed">
                <div class="footer-left">
                
                <h3>Developed thanks to</h3>
                
                <p class="footer-links">
                <a href="https://www.wix.com/">Wix</a>
                <br>
                <a href="https://www.rstudio.com/">RStudio</a>
                <br>
                <a href="https://shiny.rstudio.com/">Shiny from RStudio</a> 
                <br>
                <a href="https://www.shinyapps.io/">shinyapps.io by RStudio</a> 
                </p>
                </div>
                <div class="footer-center">
                <div>
                <i class="fa fa-map-marker"></i>
                <p><span>Qianshan County</span>Anhui, China</p>
                </div>
                
                <div>
                <i class="fa fa-phone"></i>
                <p>+(86) 15011008186</p>
                </div>
                
                <div>
                <i class="fa fa-envelope"></i>
                <p>weijiang75@126.com</p>
                </div>
                
                </div>
                
                <div class="footer-right">
                
                <p class="footer-company-about">
                <span>About </span>
                Come to talk to me!
                </p>
                <a href="http://www.estadistica.cl/">
                <img src="Wei2Go_logo.png" width="150" height="100">
                </a>
                </div>
                
                </footer>
                
                
                ')  
                      
                      
                      
                    )    
                
           )
  )
)