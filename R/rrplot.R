#' @title Creates 4 plots with the rare indexes
#' @name rrplot
#' 
#' 
#' @description function to plot index values on a 4 charts
#' 
#' 
#' @details The rrplot uses the table function to read and manipulate the data
#' @details use the par to create a 2 x 2 layout, 
#' @details then the graph is used to create four separate graphs
#' 
#' @param table containing the information necessary to plot
#' 
#' @author Everton Alves Maciel
#' 
#' @export
rrplot<-function(table){
  par(mfrow=c(2,2))
  plot(table$gri,xlab="", ylab="gri",ylim=c(0,1))
  plot(table$hsi,xlab="", ylab="hsi",ylim=c(0,1))
  plot(table$psi,xlab="", ylab="psi",ylim=c(0,1))
  plot(table$rr,xlab="", ylab="rr",ylim=c(0,1))
}
