
#' box_plot
#'
#' @param select
#'
#' @return
#' @export
#'
#' @import ggplot2
#' @import tidyverse
#'
#' @examples box_plot('Average_Total_Payments')
box_plot <- function(select){
  ggplot(DRG, aes(x = DRG$code, y = get(select))) +
    geom_boxplot()+      ##Plot the boxplot
    labs(title = "Boxplot of Average Total Payments against DRG code") +   scale_y_log10() +  ##Using log 10 to make the plot more visually appealing
    xlab("DRG code") +
    theme(axis.text=element_text(size=10),    ##Set the theme
          axis.title=element_text(size=16),
          plot.title=element_text(size = 20),
          axis.text.x = element_text(angle = 90, hjust = 1))
}
