##Exercise 1
#provide name of data
f<-nameofdata

#specify number of rows to print
n<-5

#print rows
f[n,]

##Exercise 2
#a
#read in file
dataf<-read.csv(file="iris.csv", header=TRUE, stringsAsFactors = FALSE)
#output data
dataf[149:150,4:5]
#b
#identify names
species=as.vector(unique(dataf[,5]))
#for each name, isolate the rows with that name
for(i in 1:3){
  values=dataf[dataf$Species==species[i],]
  #print number of observations
  print(nrow(values))
}
#c
#for each row in the file
for(i in 1:nrow(dataf)){
  #if sepal width>/=3.5, print the observation
  if(dataf[i,2] >= 3.5){
    print(dataf[i,])
  }
}#make a data frame of all setosa observations
setosa<-cbind(dataf[dataf$Species=="setosa",])
#write into a file
write.csv(setosa, "setosa.csv")
#d
#isolate target rows
virginica<-cbind(dataf[dataf$Species=="virginica",3])  
#perform calculations
mean(virginica)
min(virginica)
max(virginica)