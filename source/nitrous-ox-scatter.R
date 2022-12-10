#A5 Nitrous Oxide scatterplot
owid_co2_data <- read.csv("../a5-chuco7/co2-data/owid-co2-data.csv")
nitrous_ox_data <- owid_co2_data_clean[,c(1,2,46)]
merged_data <- merge(co2_data, methane_data)
combined_data <- merge(merged_data, nitrous_ox_data)

#code for the scatterplot
nitrous_ox_scatter <- ggplotly(ggplot(combined_data, aes(x=year, y=nitrous_oxide, label=country)) + 
                              geom_point() +
                              labs(
                                x = "Year",
                                y = "Nitrous Oxide Value",
                                title = "Nitrous Oxide for Countries Over the Years"
                              ))
