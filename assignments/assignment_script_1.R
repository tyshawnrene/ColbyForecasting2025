db = DB |> 
  dplyr::filter(scenario == "RCP45", 
                         year == 2055,
                         interval == "mon")
x = read_brickman(db)
buoys = gom_buoys()
M01 = dplyr::filter(buoys, id == "M01")
long_values = extract_brickman(x, M01)
SST = dplyr::filter(long_values, name=="SST")
ggplot(data = SST,                               
       mapping = aes(x = factor(month, month.abb), y = value)) +                
  geom_point() +                                     
  labs(title = "RCP4.5 2055 SST at Buoy M01") +
  labs(y = "SST(C)", x = "Month")
