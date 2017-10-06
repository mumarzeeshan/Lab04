#converting Time series to matrix
AirPassengers = matrix((AirPassengers),ncol = 12, byrow = TRUE)
#row names
rownames(PassengerMatrix) <- c("1949","1950","1951","1952","1953","1954","1955","1956","1957","1958","1959","1960")
#col names
colnames(PassengerMatrix) <- c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec")
#showing matrix
PassengerMatrix
#getting the index of the most profitable mont
index= which(PassengerMatrix==max(PassengerMatrix),arr.ind = TRUE)
#printing the index
print(index)
row =rownames(PassengerMatrix)[index[,1]]
col =colnames(PassengerMatrix)[index[,2]]
cat("Max Profitable month in 12 year's is",col, row)
