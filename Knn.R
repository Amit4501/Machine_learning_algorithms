predicited.purchase <- NULL
error.rate <- NULL
for (i in 1:20) {
  predicited.purchase <- knn(train.data,test.data,train.purchase,k=i) 
  error.rate[i] <- mean(test.purchase != predicited.purchase )
}
