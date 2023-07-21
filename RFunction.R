library('move2')
library('sf')

## The parameter "data" is reserved for the data object passed on from the previous app

## to display messages to the user in the log file of the App in MoveApps one can use the function from the logger.R file: 
# logger.fatal(), logger.error(), logger.warn(), logger.info(), logger.debug(), logger.trace()

rFunction = function(data) {
  
  #add NA locations; those will be adapted in the following App of this pair, called "Annotate with Location"
  data$location_long <- NA 
  data$location_lat <- NA
  #data$geometry <- st_sfc(st_point(c(NA,NA)),crs=st_crs("WGS84")) #not possible to have non-numeric st_point

  data$IOTYPE <- "move2_nonloc"
  
  return(data)
}

#combination should be easiest with move2
#mt_track_id(data) <- make.names(mt_track_id(data),allow_=FALSE)
#loc2 <- readRDS("Workflow_Instance_001__moveStack_to_move2_loc__2023-06-07_07-44-40.rds")
#combi2 <- mt_stack(data,loc,.track_combine="rename")
#saveRDS(combi2,"combi_vulture_loc_nonloc_move2.rds")

# tried with move1, but too many errors and untimely really
#library(move)
#loc1 <- readRDS("Workflow_Instance_001__Movebank__2023-06-07_07-44-32.rds")
#data1 <- to_move(data)
#combi1 <- moveStack(data1,loc1,forceTz="UTC")
#saveRDS(combi1,"combi_vulture_loc_nonloc.rds")









