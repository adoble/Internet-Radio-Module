/*
 * Group.cpp
 *
 *  Created on: 13 May 2019
 *      Author: Andrew
 */

#include "Group.h"



/*Group::Group() {
	// TODO Auto-generated constructor stub

}*/

Group::Group(char* groupName, int maxGroupSize) {
	this->maxGroupSize = maxGroupSize;
	this->groupName = groupName;
	this->nStations = 0;
	this->stations = new Station*[maxGroupSize];

}

Group::~Group() {
	// TODO Auto-generated destructor stub
}

Station* Group::addStation(char* pStationName, char* pStationURL) {
	Station* station = NULL;


	if (nStations < maxGroupSize) {
		station = new Station(pStationName, pStationURL);

		stations[nStations] = station;
		nStations++;
	}

	return station;
}

char* Group::getName() {
	return groupName;
}

/*
 * Iterator through the stations contained in this group.
 * Returns a pointer to the next group or NULL if there are no more stations.
 * The Group object should first be initialised with begin() before using this
 *
 */
Station* Group::next() {
	Station* station= NULL;

	if (iterator < nStations) {
		station =  stations[iterator++];
	}

	return station;

}

/*
 * Intialise the iterator through the stations contained in this group.
 */
void Group::begin() {

	iterator = 0;

}

