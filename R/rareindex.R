#' @title calculates the rr index
#' @name rareindex
#' 
#' 
#' @description Function to calculate a index of rarity based on Rabinowitz scheme
#' sp Prepare a list of unique species
#' lat1  Calculates a latitudinal amplitude for each species
#' long1 Calculates a longitudinal amplitude for each species
#' latlong1 sum the lat1 and long1
#' range1 Adds constant 1 to the latlong1
#' max_ind calculate the maximum population size for each species
#' Habitat calculate the maximum number of habitat where species are for each species
#' rareindex Returns the rarity index
#' 
#' @return returns a matrix containing the values of 4 indexes-gri,hsi,psi and rr
#' 
#' @references Rabinowitz 1981 - Seven forms of rarity. In 'The biological aspects of rare plant conservation'.Ed. H Synge pp. 205-217
#' 
#' @param table containing the information necessary to calculate index of rarity
#' @author Everton Alves Maciel
#' 
#' @export
rareindex<-function(table){
  
  sp <- as.character(sort(unique(table$spp)))

  
  lat1<-numeric()
  for(i in 1:length(sp))
    
    lat1 [i] <- diff(range(table$lat[which(table$spp==sp[i])]))
  
  
  {
    
    }
  long1<-numeric()
  
  for(i in 1:length(sp))
    
    
    long1 [i] <- diff(range(table$long[which(table$spp==sp[i])]))
  latlong1<-lat1*long1+1
  range1<-1/(latlong1)
  
  {
    
  }
  
  
  max_ind <- numeric()
  for(i in 1:length(sp))
  {
    a <- table$abundance[which(table$spp==sp[i])] 
    b <- max(a)  
    if(b!=0){   
      max_ind[i] <- 1/b
      
    }
  }
  
  Habitats <- numeric() 
  for(i in 1:length(sp))
  {
    c <- unique(table$habitat[which(table$spp==sp[i])])  
    Habitats[i] <- 1/length(c)
    
    
  }
  rareindex<-(range1+max_ind+Habitats)/3 
  table1 <- data.frame(sp,range1,Habitats,max_ind,rareindex)
  names(table1)[1:5] <- c("spp", "gri", "hsi","psi","rr")
  return(table1)
}

