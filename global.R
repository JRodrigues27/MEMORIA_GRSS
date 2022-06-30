
#  ------------------------------------------------------------------------
#
# Title :   Memoria GRSS (inspirado em: Memory Hex - UI)
#    By : Jefferson Rodrigues (de: dreamRs)
#  Date : 2020/08/10
#    
#  ------------------------------------------------------------------------




# Packages ----------------------------------------------------------------

library("shiny")
library("glue")



# Modules -----------------------------------------------------------------

source("modules/hex-module.R")
source("modules/time-module.R")
source("modules/welcome-module.R")



# Functions ---------------------------------------------------------------

source("functions/utils.R")



# Global variables --------------------------------------------------------

n_hex <- 6

shareurl <- "https://twitter.com/intent/tweet?text=Mandei%20bem%20identificando%20os%20RESÍDUOS%20DE%20SAÚDE%20em%20{time}%20segundos!%20Bate%20meu%20tempo?%20%23rstats%20%23shiny%20%23marcelinaambiente%20%40hosp_marcelina%20Jogue%20aqui:&url=https://jrodrigues.shinyapps.io/2020_MEMORIA_RSS/"


