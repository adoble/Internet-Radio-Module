/*
 * Group.h
 *
 *  Created on: 13 May 2019
 *      Author: Andrew
 */

#ifndef GROUP_H_
#define GROUP_H_

#include <Arduino.h>
#include "Station.h"

//TODO
//#include <string.h>
//#define NULL nullptr
//#include <Arduino.h>

class Group {
public:
	//virtual Group();
	Group(char*, int);
	virtual ~Group();


	Station* addStation(char*, char*);
	char* getName();

	void begin();
	Station* next();

private:
	int maxGroupSize;   // Max number of stations in a group
	char* groupName;    // Name of the group '\0' terminated)
	Station** stations; // List of pointers to the station data.
	int nStations;      // Number of stations in this group
	int iterator;       // Used to iterate the groups contained in a object of this class.


};

#endif /* GROUP_H_ */
