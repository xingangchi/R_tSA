#unit1

#1.4.2 R的安装
install.packages('zoo')
library(zoo)

#1.4.3 R语言基本规则
sum(1,2,3)
sum(1,2,3
)
x=1;y=2;x+y
{x=1
  y=2
  x+y}
x<-3
2*x+1->y
z<-y^2
x
y
z

#1.4.4 生成时间序列数据
price<-c(101,82,66,35,31,7)
price<-ts(price,start=c(2005,1),frequency = 12)#ts生成时间序列#开始年月
price
price<-scan()#手工输入或者复制列数据
price<-ts(price,start=c(2005,1),frequency = 12)

#例1-1
#x<-read.table("G:/applied statistics/时间序列分析/时间序列分析——基于R数据/数据/案例数据/file1.csv",sep=",",header=T)
x<-read.table("file1.csv",sep=",",header=T)
x
yield
x$yield

#1.4.5 时间序列数据的处理
y<-log(x$yield)
y
z<-subset(x,year>1925,select=yield)#取子集
z
a<-c(1:7)
a[4]<-NA
a
y1<-na.approx(a)#线性插值
y1
y2<-na.spline(a)#样条插值
y2

#1.4.6 时间序列数据导出
#例1-1 续
ln_yield<-log(x$yield)
x_new<-data.frame(x,ln_yield)
write.table(x_new,file="yield.csv",sep=",",row.names = F)
#write.table(x_new,file="G:/applied statistics/时间序列分析/时间序列分析——基于R数据/数据/案例数据/yield.csv",sep=",",row.names = F)