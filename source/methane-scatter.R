#A5 Methane scatterplot
owid_co2_data <- read.csv("../a5-chuco7/co2-data/owid-co2-data.csv")
methane_data <- owid_co2_data_clean[,c(1,2,44)]
View(methane_data)

#code for the scatterplot
methane_scatter <- ggplotly(ggplot(methane_data, aes(x=year, y=methane, label=country)) + 
                          geom_point() +
                          labs(
                            x = "Year",
                            y = "Methane Value",
                            title = "Methane for Countries Over the Years"
                          ))
