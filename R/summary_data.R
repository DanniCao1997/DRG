#' summary_data
#'
#' @param select
#'
#' @return
#' @export
#'
#' @import tidyverse
#'
#' @examples summary_data('Average_Total_Payments')
summary_data <- function(select){
  DRG %>% group_by(code) %>%
    summarise(mean = mean(get(select)),
              median = median(get(select)),
              standard_deviation = sd(get(select)))
}

