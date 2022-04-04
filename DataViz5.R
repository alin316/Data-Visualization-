# hw week 5 
# Anna Lin


#plot1
hotdogs <-
  read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv",
            sep=",", header =TRUE)

fill_colors <- c()
  for ( i in 1:length(hotdogs$New.record) ) {
    if (hotdogs$New.record [i] == 1) {
      fill_colors <- c(fill_colors, "#821122")
    } else {
        fill_colors <- c(fill_colors, "#cccccc")
    }
  }
      
hotdogs$Year    
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col =fill_colors,
        border=NA, space=0.3, ylim=c(0,70))


#plot 2
hot_dog_places <-
  read.csv( 'http://datasets.flowingdata.com/hot-dog-places.csv',
             sep= ",", header=TRUE)
names(hot_dog_places) <- c( "2000 ", "2001", "2002 ", "2003 ", "2004 ",
                            "2005", "2006", "2007 ", "2008 ", "2009 ", "2010 ")
hot_dog_matrix <- as.matrix(hot_dog_places)
barplot(hot_dog_matrix, border=NA, space=0.25, ylim=c(0, 200))


#plot 3
subscribers <-
  read.csv( "http://datasets.flowingdata.com/flowingdata_subscribers.csv",
             sep=',', header =TRUE)
plot(subscribers$Subscribers , type="h", ylim=c(0, 30000) ,
     xlab ="" , ylab="")
points (subscribers$Subscribers, pch =19, col ="black")

#plot 4

population <-
  read.csv("http://datasets.flowingdata.com/world-population.csv",
            sep=",", header= TRUE)
plot(population$Year, population$Population , type="l",
     ylim=c(0, 7000000000), xlab="Year", ylab="Population ")

#plot 5
postage <- read.csv( "http://datasets.flowingdata.com/us-postage.csv",
                      sep=",", header=TRUE)
plot(postage$Year, postage$Price, type= "s",
     xlab="", ylab ="")

#plot 6
unemployment <- read.csv("http://datasets.flowingdata.com/unemployment-rate-1948-2010.csv", 
                         sep = ",")
scatter.smooth(x = 1:length(unemployment$Value)
               , y = unemployment$Value, ylim = c(0,11)
               , xlab="", ylab =""
               , degree = 2, col = "#CCCCCC", span = 0.5)
