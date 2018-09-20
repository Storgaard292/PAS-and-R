#  #part 1

#install.packages("mvtnorm")
library("mvtnorm")
dmvnorm(c(1,2,2),mean=rep(0,3),sigma=diag(c(1,1,1)))
#rmarkdown::render("lecture notes 19-9.R")

#types of code

s=0
for(i in 1:100){
  s=s+i
}
s

#if-then-else
x=-3
if(x<0){
  signx=-1
} else {
  if(x==0){
    signx=0
  } else{
    signx=1
  }
}
signx

signfct=function(x){
  signx=0
  if(x<0){
    signx=-1
  }
  if(x>0){
    signx=1
  }
  if(x==0){
    signx=0
  }
  signx
}
signfct(1)
# opgaver til del 1

prodvecfct=function(x){
  xprod=1
  for(i in 1:length(x)){
    xprod=x[i]*xprod
  }
  xprod
}
prodvecfct(c(1,2,2,2))
#fik den ikke færdig
fibfct=function(n){
  xfib=c(0,1)

  
    for(i in 1:n){
    xfib[i]=xfib[i-3]+xfib[i-2]
  }
  xfib[3]
}

fibfct(6)




  




