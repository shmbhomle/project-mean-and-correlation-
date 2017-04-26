pollutantmean<-function(directory,pollutant,id=1:332){
  d<-paste("C:/Users/user/Desktop/",directory,sep="")
  setwd(d)
  a<-list.files(path=d)
  pmean<-vector()
  s<-vector()
  for(i in id){
  h=read.csv(a[i])
  com<-complete.cases(h[,pollutant])
  s[i]<-sum(com)
  pmean[i]<-mean(h[,pollutant],na.rm=T)
  #or use this#pmean=c(pmean,mean(h[,pollutant],na.rm=T))
  }
  msum<-sum(s*pmean,na.rm=T)
  total<-sum(s,na.rm=T)
  answer<-msum/total
  print(answer)
}