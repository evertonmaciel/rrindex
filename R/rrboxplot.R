#' @title Creates a boxplot containing the averages of four indexes
#' @name rrboxplot
#'
#' 
#' 
#' @description function to plot index values on a single charts
#' 
#' 
#' @details The rrboxplot function uses the function table to create 4 box in a single layout;
#' @details The rows in each box represent the average of each index
#' 
#' @param table containing the information necessary to plot
#' @author Everton Alves Maciel
#' 
#' @export
rrboxplot<-function(table){
  gri<-table$gri
  hsi<-table$hsi
  psi<-table$psi
  rr<-table$rr
  boxplot(gri,hsi,psi,rr,names=c("gri","hsi","psi","rr"))
}

