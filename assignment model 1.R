#inner join,left outer join,right outer join
d1 <- data.frame(
  x=c(1:4),
  y=c("a","b","c","d"),
  z=c(101:104)
)

d2 <- data.frame(
  x=c(1:7),
  y=c("e", "f", "g", "h", "i","j","k"),
  z=c(101:107)
)
d1
d2
left_join(d1,d2, by=c("x"="x","z"="z"))
right_join(d1,d2, by=c("x"="x" , "z"= "z"))
inner_join(d1,d2, by=c("x"="x","z"="z"))
#ggplot2 with customer_churn 


ggplot(data = customer_churn,aes(x=tenure)) +geom_histogram(fill="red",col="pink",bins = 40)
ggplot(data = customer_churn,aes(x=tenure), fill=partner) + geom_histogram()
ggplot(data = customer_churn,aes(x=tenure)) + geom_histogram()
# Change the border color to blue and background color to lightblue
plot(pressure, pch=25, col="red", bg="black")

# Scale the data points by 1.2
plot(pressure, cex=1.2)

# Change the color of symbols to red
plot(pressure, col="red")


#assignment model 1,part 5,class function
View(city_temperature)
class(city_temperature$Region)
class(city_temperature$Country)
class(city_temperature$State)
class(city_temperature$City)
class(city_temperature$Month)
class(city_temperature$Day)
class(city_temperature$Year)
class(city_temperature$AvgTemperature)
View(placement_data)
class(placement_data$gender)
class(placement_data$ssc_p)
class(placement_data$ssc_b)
class(placement_data$hsc_p)
class(placement_data$hsc_b)
class(placement_data$hsc_s)
class(placement_data$degree_p).
class(placement_data$degree_t)
class(placement_data$workex)
class(placement_data$etest_p)
class(placement_data$specialisation)
class(placement_data$mba_p)
class(placement_data$status)
class(placement_data$salary)


#Module 1: Assignment 6 - For Loop 
#1(a)
count=0
for (i in 1: nrow(placement_data)) {
  if(placement_data$status[i]=="Placed"){
    count=count+1
  }
  
}
count
#1(b)

count2=0
for (i in 1:nrow(placement_data)) {
  if(placement_data$hsc_s[i]=="Science"){
    count2=count2+1
  }
}
count2
#1(c)

count3=0
for (i in 1:nrow(placement_data)) {
  if(placement_data$hsc_s[i]=="Commerce"){
    count3=count3+1
  }
}
count3
 #2
count4 =0
for (i in 1:nrow(placement_data)) {
  if(placement_data$hsc_p[i] >80){
    count4=count4+1
  }
  
}
count4

#3
count5 =0
for (i in 1:nrow(placement_data)) {
  if(placement_data$mba_p[i]>75 & placement_data$status[i]=="Placed"){
    count5=count5+1
  }
  
}
count5
#4
View(customer_churn)
count6=0
for (i in 1:nrow(customer_churn)) {
if(customer_churn$SeniorCitizen[i]==1 & customer_churn$InternetService[i]=="DSL"){
  count6=count6+1
}  
}
count6


#Assignment model1,7

View(placement_data)
#a
switch (placement_data$status[95],
  "Placed" = print("The student is placed from campus placcement drives"),
  "Not Placed"=print("The student is not placed from campus placcement drives"),
  "Na"=print("The data of the student is not available")
)
#b
switch (placement_data$hsc_s[64],
        "Science"= print("The subject opted by the student is Science"),
        "Commerce"=print("The subject opted by the student is Commerce"),
        "Arts"="The subject opted by the student is Arts"
)
#c
switch (customer_churn$PaymentMethod[28],
        "Credit card(automatic)"= print("The customer is using credit card as their payment method"),
        "Mailed check"=print("The customer is using mailed check for payment"),
        "Electronic check" = print("The customer is using electronic check for payment")
)
# with if-else function 
#c
if(customer_churn$PaymentMethod[28] =="Credit card(automatic)"){
  print("The customer is using credit card as their payment method")
}else if(customer_churn$PaymentMethod[28] =="Mailed check"){
  print("The customer is using mailed check as their payment method")
}else{
  print("The customer is using electronic check as their payment method")
}
#b
placement_data$hsc_s[64]-> check_2
check_2
if(check_2=="Science"){
  print("The subject opted by the student is Science")
}else if(check_2=="Commerce"){
  print("The subject opted by the student is Commerce")
} else{
  }
  print("The subject opted by the student is Arts")
}
#a
check_1
if(check_1=="Placed"){
  print("The student is placed from campus placcement drives ")
} else if(check_1=="Not Placed"){
  print("The student is not placed from campus placcement drives")
}else{
  print("The data of the student is not available")
}
#assignment model 1 part 8,if statement
#1(a)
View(placement_data)
placement_data[12,9] -> check_1
check_1
if(check_1=="Comm&Mgmt"){
  print("The student is of the stream Commece and Management")
}
#1(b)
placement_data[23,12] -> check_2
check_2
if(check_2=="Mkt&HR"){
  print("The specialization of the student is Marketing and Human Resource")
}
#1(c)
placement_data[39,14]-> check_3
check_3
if(check_3 =="Placed"){
  print("The student is placed from campus")
}

#2(a)
View(pharma_audit_data)
pharma_audit_data[37,2] -> check_4
check_4
if(check_4=="Medication history documenting error"){
  print("The patient^s medical record is missing")
}
#2(b)
pharma_audit_data[180,2] -> check_5
check_5
if(check_5=="unclear route"){
  print("The patient is having an unclear route of transmission")
}
#2(c)
pharma_audit_data[220,1] -> check_6
if(check_6=="Location3"){
 print('The location ID of the patient is Location3 ')
}
#3(a)
View(city_temperature)
city_temperature[11,1] -> check_7
if(check_7=="Africa"){
  print("The region for which we are calculating  average temperature is africa")
}
#3(b)
city_temperature[79961,4] -> check_8
if(check_8 =="Conakry"){
  print("The city for which we are calculating average temperature is Conakry")
}
#3(c)
city_temperature[70,7] -> check_9
if(check_9=="1995"){
  print("We are calculating average temperature for the year 1995")
}
#model 1,assignment10,-While Loop
#1
i=1
count=0
while (i<=nrow(placement_data)) {
  if(placement_data$hsc_b[i]=="Central"){
    count=count+1
  }
  i=i+1
}
count
#2
i=1
count=0
while (i<=nrow(placement_data)) {
  if(placement_data$hsc_s[i]=="Science" & placement_data$degree_p[i] > 75){
    count=count+1
  }
  i=i+1
}
count
#3(i)
View(customer_churn)
count=0
i=1
while (i<= nrow(customer_churn)) {
  if(customer_churn$SeniorCitizen[i]== 1 & customer_churn$Contract[i] =="One year" & customer_churn$InternetService[i] ="Fiber optic"){
    count=count+1
  }
  i=i+1
}
count
#3(II)
i=1
count=0
while (i<=nrow(customer_churn)) {
  if(customer_churn$SeniorCitizen[i]==0 & customer_churn$Contract[i]=="Two year" & customer_churn$TotalCharges[i]>7000){
    count=count+1
  }
  i=i+1
}
count
# 3(III)
i=1
count=0
while (i<=nrow(customer_churn)) {
  if(customer_churn$MonthlyCharges[i]>6500){
    count=count+1
  }
  i=i+1
}
count