
#First, check how crime type varies in 77 community areas in Chicago.

ggplot(data=df,aes(x=df$data.Community.Area,y=df$data.Primary.Type)) + 
  geom_count()+
  xlab("Community Area") + 
  ylab("Primary Type") + 
  theme_minimal()

#Histograms of total occurrence
Total_Occ <- ggplot(data=df,aes(x=df$data.Community.Area)) + 
  geom_bar(stat="count",color="White",fill="Sky Blue") +
  ggtitle("Total Occurrence of Crimes of Chicago in 2016") +
  xlab("Community Area") + ylab("Occurrence") + theme_minimal()
Total_Occ


# The maximum number of crimes happened in Area 25, Area 8 and 28 follow.
top3 <- data.frame("Community Area" = c(25,8,28),"Occurrence"=c(sum(crimeTypeCount25$Occurrence),sum(crimeTypeCount8$Occurrence),sum(crimeTypeCount28$Occurrence)))
Top3Area <- mutate(top3,Prop=round(Occurrence/207397*100,2))

#Take area #25 as an example
new25 <- data.frame(crimeTypeCount25[1:5,]) %>% 
  add_row(Crime.Type = "OTHERS",Occurrence = sum(crimeTypeCount25$Occurrence[6:33]))
Total25 <- sum(crimeTypeCount25$Occurrence)
Perc25 <- mutate(new25,Percentage=round(Occurrence/Total25*100,2))
Perc25

bp <- ggplot(Perc25, aes(x="", y=Perc25$Percentage, fill=Perc25$Crime.Type))+
  geom_bar(width = 1, stat = "identity") +ggtitle("Proportion of Crime Type in Community Area 25 ")
pie <- bp + coord_polar(theta = "y") + xlab("")+ylab("Proportion") + labs(fill='Crime Type')
pie + scale_fill_brewer(palette="Blues") + theme_minimal()

