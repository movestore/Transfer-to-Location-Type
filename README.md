# Transfer to Location Type

MoveApps

Github repository: *github.com/movestore/Transfer-to-Location-Type*

## Description
This App is a workaround to integrate move2 location and move2 non-location data. It adds location points (0,0) to all the non-location measurements that are not correct !warning!. These location values need to be corrected by use in combination with the `Annoate with Location` App. Both Apps will be removed once Apps with more than one input are possible.

## Documentation
For allowing integration of location and non-location data (in the move2 R package formats) we provide this App that needs to be used in combination with the `Annotate with Location` App. It artificially adds (0,0) locations to all the non-location measurements and thus allows move2_loc type output that can be integrated with move2 loation data. It is meant to be integrated with data of the same individuals for annotation with positions of closest in time. See the example workflow `Mortality by Activty with Location`.

Note that each non-location measurment receives a 'move2_nonloc' entry in the added attribute `IOTYPE`. This will be used by the `Annotate with Location` App to split the two data types and annotate with locations.

### Input data
move2 non-location object in Movebank format

### Output data
move2 location object in Movebank format

### Artefacts
none

### Settings 
none

### Most common errors
none yet.

### Null or error handling
**data** Note that the output of this App includes incorrect locations that are all (0,0). They must be updated by integrating with real locations using the `Annotate with Location` App.
