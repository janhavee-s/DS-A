#Q1 load dataset
cols<-c("age","worksclass","fnlwgt","education","education_num","marital_status",
        "occupation","relationship","race","sex","capital_gain","capital_loss",
        "hours_per_week","native_country","income")

adult<-read.csv("adult-data.txt",
                header=FALSE,col.names=cols,
                strip.white=TRUE, na.strings="?",
                stringsAsFactors = FALSE)

#Q2 first 10 rows
print(head(adult,10))
View(head(adult,10))

#Q3 ds structure
str(adult)

#Q4 avg age
print(mean(adult$age, na.rm=TRUE))
#print(mean(adult$education, na.rm=TRUE))
print(mean(adult$education_num, na.rm=TRUE))

#Q5 
print.table(adult$income)
?table

#Q6 most common occ
occ_counts<- sort(table(adult$occupation), decreasing=TRUE)
most_common_occ<- names(occ_counts)[1]
print(most_common_occ)
occ_counts
?names

#Q7 avg hrs per week by income
print(tapply(adult$hours_per_week, adult$income, mean, na.rm=TRUE))
?tapply

#Q8 barchat for education distribution
edu_count<- sort(table(adult$education), decreasing=TRUE)
barplot(edu_count, las=2, cex.names=0.7, main="education level distribution", ylab="count")
?barplot

#Q9
tbl<- with(adult, table(native_country,income))
prop_over50k<- tbl[, ">50K"] / rowSums(tbl)
colnames(tbl)
