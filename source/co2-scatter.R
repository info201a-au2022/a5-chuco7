#A5 scatterplot for co2 emmissisions
owid_co2_data <- read.csv("../a5-chuco7/co2-data/owid-co2-data.csv")
co2_data <- owid_co2_data_clean[,c(1,2,8)]
merged_data <- merge(co2_data, methane_data)
combined_data <- merge(merged_data, nitrous_ox_data)

#code for the scatterplot
co2_scatter <- ggplotly(ggplot(combined_data, aes(x=year, y=co2, label=country)) + 
                     geom_point() +
                     labs(
                       x = "Year",
                       y = "CO2 Value",
                       title = "CO2 for Countries Over the Years"
                     ))
