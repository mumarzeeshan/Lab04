profit = 8000
n=1:12
m = 1:12

for(i in 1:length(n))
{
  for(j in 1:length(m)){
    PassengerMatrix[i,j]=PassengerMatrix[i,j]*profit
  }
  profit = profit * 1.1
  print (profit)
}
PassengerMatrix

#getting the index of the most profitable month
index= which(PassengerMatrix==max(PassengerMatrix),arr.ind = TRUE)
#printing the index
print(index)
row =rownames(PassengerMatrix)[index[,1]]
col =colnames(PassengerMatrix)[index[,2]]
cat("Max Profitable year in 12 year's is", row)


