# Files:
* CONST_DATA.mat => having constants like:
..* POS_ZONE => 12x1 => zone number that are included in final destination
..* QUANTIZATION => 162x1 => transition times quantized to 162 levels
..* ZONE => 183x4 => each zone 4 points to represent the rectangle

* VAR_DATA.mat => having variables like:
..* DELTAT_N => 183x183x162 => transitions from one zone to another with time for neagitive trajectories
..* DELTAT_P => 183x183x162 => transitions from one zone to another with time for positive trajectories
..* TRANSITION_N => 183x183 => transitions from one zone to another total for negative trajectories
..* TRANSITION_P => 183x183 => transitions from one zone to another total for positive trajectories

* importFileData.m => __Function__ [TimeStamp,IDx,Xi,Yi] = importFileData(filename, startRow, endRow)
  read one file from the hard disk

* showMap.m => __Function__ showMap()
  show map on open figure

* findZone.m => __Function__ ZoneNumber = findZone(x,y,ZONE)
  gives a single zone number according to the single x & y

* zoneAllXY.m => __function__ zonesAll = zoneAllXY(Xi, Yi, ZONE)
  gets all zones for all x's and y's