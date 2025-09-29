ipl<- read.csv("batting_bowling_ipl_bat.csv")
ipl<- na.omit(ipl)

print(head(ipl,10))

top5<- ipl[order(-ipl$Runs), ] [1:5, c("Name", "Runs")]
print(top5)

highest_avg<- ipl[which.max(ipl$Ave), c("Name", "Ave")]
print(highest_avg)

lowest_avg<- ipl[which.min(ipl$Ave), c("Name", "Ave")]
print(lowest_avg)

top10<- ipl[-ipl$SR, ] [1:10, ]
barplot(top10$SR,
        names.arg = top10$Name,
        las = 2,             
        col = rainbow(10),    
        main = "Top 10 Players by Strike Rate",
        ylab = "Strike Rate"
)
colors()

        

        
        