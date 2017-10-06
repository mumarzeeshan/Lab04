#Task 1.2 FInding the most profotbale year in 12 years data
n=1:12
m= 1:12
sum= 0
sumrow = c()
for(i in 1:length(n))
{for(j in 1: length(m))
{ 
  sum = sum+ PassengerMatrix[i,j]
}
  sumrow[i] = sum
  print(sum)
  sum= 0
}

maxsum= max(sumrow)
print(maxsum)
index = which(PassengerMatrix == max(PassengerMatrix), arr.ind = TRUE)
print(index)
row =rownames(PassengerMatrix)[index[,1]]

cat("Max Profitable Year in 12 year's is",row)


