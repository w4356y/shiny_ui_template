library(shiny)
library(shinyjs)
library(bslib)
#library(ggplot2)
#library(thematic)
#library(patchwork)
#library(ggtext)
#library(glue)

my_theme <- bs_theme(bootswatch = "superhero",
                     base_font = font_google("Berkshire Swash"))
                     #base_font = font_google("Righteous"))
#bs_add_rules(sass::sass_file("style.css"))

 ui <- fluidPage(

   useShinyjs(),
   #tags$script(HTML('alert("Hello")')),
   tags$script(src = "script.js"),
   theme = my_theme,
   hr(),
   h4("New Product Development, Genscript"),
   titlePanel("Data Storage",windowTitle = "1"),
   #actionButton("btn1","Click it"),
   fluidRow(
     column(width = 3,
            shinydashboard::box(
              title = "Encoding", 
              width = "100%",
              height = 10,
              #icon("database"),
              h5("Transform binary to quarternary"),
              radioButtons("usertype", "User Type",
                           c("Ordinary" = "ordinary",
                             "Advance" = "advance"), selected = "ordinary",
                           inline = TRUE),
              fileInput("file", "Upload file, ziped file suggested",
                        multiple = TRUE,
                        accept = c(
                          "text/csv",
                          "text/comma-separated-values,text/plain",
                          ".gz")
              ),
              sliderInput("alphaEn","How many more fragments to generate.", min = 0, max = 1,value = 0.7),
              textInput("size","Size, number of information bytes per message", value = 32),
              textInput("m","Max_homopolymer, the largest number of nucleotides in a homopolymer", value = 3),
              textInput("gc","GC deviation,The fraction of GC content above/below 0.5", value = 0.05),
              textInput("rs","rs, number of bytes for rs codes.", value = 2),
              textInput("delta","Delta, degree distribution tuning parameter", value = 0.001),
              textInput("dist","c_dist, degree distribution tuning parameter", value = 0.025),
              selectInput("stoprule","Please choose a stop rule.", choices = c("alpha","exact","round","exhaust","forever"), selected = "alpha"),
              textInput("exact","Maximal number of oligos", value = 10000),
              hr(),
              fluidRow(
                 column(6,
                        actionButton("confirm","Confirm")
                        ),
                 column(6,
                        actionButton("check","Check")
                        )
              ),
              br(),
              br(),
              fluidRow(
                column(4,
                       downloadButton("downloadFasta", "Download Fasta", width = '100%')
                       ),
                column(4,
                       downloadButton("downloadYml", "Download Yml", width = '100%')
                       )
              ),
              #hr(),
              #hr(),
              #actionButton("btn1","Click it")
              )
            ),
     column(width = 6,
            shinydashboard::box(
              title = "Log Board", 
              width = "100%",
              background = "fuchsia",
              height = 10,
              tags$img(src="decode.png", style = 'width: 100%;'),
              div(class = "small_text",
                  HTML(paste("Idea from Mr. Erlich's",
                  "<a href = 'https://github.com/TeamErlich/dna-fountain'>dna-fountain</a>.",
                  "for more information about how encoding and decoding goes, please reference his paper.",
                  "For techinical support, please contact", "<b style= 'color:purple'>Wei Jiang(Wei1.Jiang@genscript.com)</b>."))),
              htmlOutput("info"),
              
            )
     ),
     column(width = 3,
            shinydashboard::box(
              title = "Decoding", 
              width = "100%",
              height = 10,
              h5("Transform quarternary to binary"),
              radioButtons("decodeMode", "Decode Mode",
                           c("Config yml" = "config",
                             "Parameters" = "parameter"),
                           inline = TRUE),
              tags$p("Special caution is needed when using this mode!"),
              fileInput("DecodeFasta", "Upload decoding fasta",
                        multiple = FALSE,
                        accept = c(
                          "text/csv",
                          "text/comma-separated-values,text/plain",
                          ".fasta")
              ),
              fileInput("DecodeYml", "Upload decoding yml",
                        multiple = FALSE,
                        accept = c(
                          "text/csv",
                          "text/comma-separated-values,text/plain",
                          ".yml")
              ),
              textInput("Dsize","Size, number of information bytes per message", value = 32),
              textInput("chunk","Chunk number, number of chunks"),
              textInput("Dm","Max_homopolymer, the largest number of nucleotides in a homopolymer", value = 3),
              textInput("Dgc","GC deviation,The fraction of GC content above/below 0.5", value = 0.05),
              textInput("Drs","rs, number of bytes for rs codes.", value = 2),
              textInput("Ddelta","Delta, degree distribution tuning parameter", value = 0.001),
              textInput("Ddist","c_dist, degree distribution tuning parameter", value = 0.025),
              textInput("sha","sha256 of the encoded file"),
              hr(),
              actionButton("Dconfirm","Confirm", width = '75%'),
              br(),
              br(),
              fluidRow(column(4,
                              downloadButton("downloadZip", "Download Zip", width = '100%'),
                              ))
              
              
            )
     )
   ),
   
   
   
   # tags$div(id = "page-top",
   #     #p("Hello World!"),
   #     sliderInput("slider","Value Selection", min = 0, max = 100, value = 20),
   #     radioButtons("current_theme", "App Theme:", c("Light" = "cerulean", "Dark" = "darkly"), inline = TRUE),
   #     div(id = "source_link", a(href = "https://github.com/rstudio/shiny_app_stories/blob/master/weather_lookup/", "View source code on github", icon("github"))),
   #     fileInput("file", "Upload file, zipped file suggested",
   #               multiple = TRUE,
   #               accept = c(
   #                 "text/csv",
   #                 "text/comma-seperated-values, text/plain",
   #                 ".gz"
   #               ))
   #     )
 )


# library(shiny)
# library(shinyjs)
# 
# shinyUI(
#   fluidPage(
#   useShinyjs(),
#   tags$style("#players_answer {font-size:30px;height:30px;}"),
#               titlePanel("Pokemon Maths Challenge!"),
#               fluidRow(
#                 HTML("
#                      "),
#                 imageOutput("duck_image"),
#                 HTML("
#                      ")
#               ),
#               fluidRow(
#                 sidebarLayout(
#                   sidebarPanel(
#                     numericInput('players_answer', 'Answer', value = 0),
#                     actionButton('submit_answer','Submit'),
#                     hr(),
#                     actionButton('update', 'Next Question')
#                   ),
#                   mainPanel(
#                     span(textOutput("illustration"), style = "font-size: 36px"),
#                     imageOutput("check_answer"),
#                     span(textOutput("check_answer_text"), style = "font-size: 20px")
#                   )
#                 )
#               )
#   ))

