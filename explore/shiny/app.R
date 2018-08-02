library(shiny)
library(dplyr)
#library(ggtern)
library(gridExtra)
library(tricolore)

# Functions ---------------------------------------------------------------

# UI ----------------------------------------------------------------------

ui <- fluidPage(

  titlePanel(title = 'Tricolore: A flexible color scale for ternary compositions'),

  sidebarLayout(

    # INPUT
    sidebarPanel(width = 3,
                 sliderInput(inputId = 'hue', label = 'Hue', ticks = FALSE,
                             min = 0, max = 1, step = 0.1, value = 0.3),
                 sliderInput(inputId = 'chroma', label = 'Chroma', ticks = FALSE,
                             min = 0, max = 1, step = 0.1, value = 0.9),
                 sliderInput(inputId = 'lightness', label = 'Lightness', ticks = FALSE,
                             min = 0, max = 1, step = 0.1, value = 0.8),
                 sliderInput(inputId = 'contrast', label = 'Contrast', ticks = FALSE,
                             min = 0, max = 1, step = 0.1, value = 0.6),
                 sliderInput(inputId = 'spread', label = 'Spread',
                             min = 0.5, max = 2, step = 0.1, value = 1, ticks = FALSE),
                 sliderInput(inputId = 'breaks', label = 'Discretization', ticks = FALSE,
                             min = 2, max = 20, step = 1, value = 5),
                 radioButtons(inputId = 'center', label = 'Mean centering',
                              choices = list(No = 'No', Yes = 'Yes'),
                              selected = 'No'),
                 radioButtons(inputId = 'show_center', label = 'Show center',
                              choices = list(No = 'No', Yes = 'Yes'),
                              selected = 'No'),
                 radioButtons(inputId = 'show_data', label = 'Show data',
                              choices = list(No = 'No', Yes = 'Yes'),
                              selected = 'No')
    ),

    # OUTPUT
    mainPanel(plotOutput(outputId = 'example'))
  )
)

# Server ------------------------------------------------------------------

server <- function(input, output) {

  output$call <- renderText({
    paste0(
      "Tricolore(euro_sectors, " ,
      ', breaks = ', input$breaks,
      ', hue = ', input$hue,
      ', chroma = ', input$chroma,
      ', lightness = ', input$lightness,
      ', contrast = ', input$contrast,
      ', center = ', switch(input$center, No = 'rep(1/3,3)', Yes = 'NA'),
      ', spread = ', input$spread,
      ', show_data = ', switch(input$show_data, No = FALSE, Yes = TRUE),
      ', show_center = ', switch(input$show_center, No = FALSE, Yes = TRUE),
      ', legend = TRUE)'
    )
  })

  output$example <- renderPlot(width = 800, height = 700, {

  mixed = df_lga %>%
    Tricolore( p1 = 'benzo_dd', p2='benzodiazepine_alone', p3='opioid_alone' ,
                       breaks = input$breaks,
                       hue = input$hue, chroma = input$chroma,
                       lightness = input$lightness, contrast = input$contrast,
                       center = switch(input$center, No = rep(1/3,3), Yes = NA),
                       spread = input$spread,
                       show_data = switch(input$show_data, No = FALSE, Yes = TRUE),
                       show_center = switch(input$show_center, No = FALSE, Yes = TRUE),
                       legend = TRUE)

    # customize legend
    lgnd <- mixed[['legend']] +
      labs(x = 'double_dippers', y = 'benzo', z = 'opioid',
           caption = paste0('Opioid and Benzo usage\n',
                            switch(input$center, No = 'Colors show deviations from balanced composition',
                                   input$center, Yes = 'Colors show deviation from average composition'))) +
      theme(plot.background = element_rect(fill = NA, color = NA))

    # merge data and map
    df_lga$srgb <- mixed[['hexsrgb']]

    map_data = left_join( base_map, df_lga, by=c("LGA_CODE11" = "lga"))
    #browser()
    map_data %>%
      tm_shape( ) + 
      tm_polygons( col='srgb', 
                  title = paste("Comparing Benzo, Opioid, and double dippers")
                  )  -> oz_map
      print(oz_map)

    print( lgnd, vp=viewport(x= 0.15, y= 0.85, width= 0.4, height= 0.4))
      
  }
    
    )

}

shinyApp(ui, server)
