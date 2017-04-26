complete<-function(directory,id=1:332){
  d<-paste("C:/Users/user/Desktop/",directory,sep="")
  setwd(d)
  a<-list.files(path=d)
  s<-vector()
  for(i in id)
    {
    f<-read.csv(a[i])
    n<-complete.cases(f[,"sulfate"],f[,"nitrate"])
    s=c(s,sum(n))
    }
  comp<-data.frame(id=id,nobs=s)
  print(comp)
}