/*
 * Groups.cpp
 *
 *  Created on: 13 May 2019
 *      Author: Andrew
 */

#include "Groups.h"

Groups::Groups(int bufferSize, int maxStationsInGroup) {

	this->groupBufferSize = bufferSize;
	this->currentGroup = -1;
	this->nGroups = 0;
	this->maxStationsInGroup = maxStationsInGroup;

	this->pGroups = new Group*[bufferSize];

	this->iterator = -1;
}

Groups::~Groups() {
	// TODO Auto-generated destructor stub
}

/*
 * Setup the station group structure from the configuration file data.
 * TODO
 * The fields in the station data char array are separated by ',' (comma) and the records
 * corresponding to the stations are separated CR, LF (the last record is terminated by
 * only a CR).
 *   - Substitute the ',' (comma) with '\0' so that each field is a null terminated string.
 *     This way we do not have to keep start AND end pointers to the fields.
 *   - Substitute the CRs with '\0' so that the last field in a station record is a
 *     null terminated string.
 *   - Leave the LFs as they are so that they form the end of the station record
 *
 * Parameters:
 * char data[]    			A string of chars containing the data reading for the configuration file.
 *           				WARNING: This structure is changed by this routine. If you need the original data
 *           				you must make a copy first.
 * int dataLength			The length of the data in data[]
 * int maxNumber			StationsInGroup	Maximum number of stations can can be assigned to a group.
 * int maxNUumberOfGroups	Maximum number of groups that can be specified
 *
 *
 *
 */
void Groups::setup(char data[], int  dataLength) {
	char* pStationName;
	char* pStationURL;
	char* pGroupName;
	Group* pGroup;
	enum STATE { INITIAL, STATION, URL, GROUP } state = INITIAL;

	//	 The fields in the station data char array are separated by ',' (comma) and the records
	//	 corresponding to the stations are separated CR, LF (the last record is terminated by
	//	 only a CR).
	//	   - Substitute the ',' (comma) with '\0' so that each field is a null terminated string.
	//	     This way we do not have to keep start AND end pointers to the fields.
	//	   - Substitute the CRs with '\0' so that the last field in a station record is a
	//	     null terminated string.
	//	   - Leave the LFs as they are so that they form the end of the station record
	// If the stationData ends in CR + LF the it is a windows file.
	// If the stationDate only ends with LF then it is a Unix file.

	char* p = data;



	for (int i = 0; i < dataLength - 1; i++) {
		switch (state) {
		case INITIAL:
			if (isalpha(*(p + i))) {  // Ignore any station record terminating characters such as CR
				//pStationName = stationData.pStationData;
				pStationName = p + i;
				state = STATION;
			}
			else {  // is a station record terminating character, e.g. CR
				state = INITIAL;
			}
			break;
		case STATION:
			if (*(p + i) == ',') {
				*(p + i) = '\0';
				state = URL;
				pStationURL = p + i + 1;
			}
			break;
		case  URL:
			if (*(p + i) == ',') {
				*(p + i) = '\0';
				pGroupName = p + i + 1;
				state = GROUP;
			}
			break;
		case GROUP:
			if (*(p + i) == ',') {
				*(p + i) = '\0';   // Terminate group name string

				pGroup = addGroup(pGroupName); // pGroup is a pointer to the group that
				// has been added or previously set up.
				if (pGroup != NULL) {
					pGroup->addStation(pStationName, pStationURL);
				}
				pGroupName = p + i + 1;
				state = GROUP;

			}
			if (*(p + i) == '\n') {
				*(p + i) = '\0';   // Terminate group name string
				pGroup = addGroup(pGroupName); // pGroup is a pointer to the group that
				// has been added or previously set up.
				if (pGroup != NULL) {
					pGroup->addStation(pStationName, pStationURL);
				}
				state = INITIAL;
			}
			break;
		}

	}



}



int Groups::numberGroups() {
	return nGroups;
}

/*
 * Returns a pointer to the group either found or created. If no group can be created than it returns NULL.
 */
Group* Groups::addGroup(char* pGroupName) {
	Group* pg = NULL;

	// Check if the group already exists
	for (int i = 0; i < nGroups; i++) {
		pg = *(pGroups + i);
		if (strcmp(pGroupName, pg->getName()) == 0) {
			return pg;
		}
	}

	// If group does not already exist then add a new group

	if (nGroups < groupBufferSize) {
		pg = new Group(pGroupName, maxStationsInGroup);

		pGroups[nGroups] = pg;
		//*(groups.pGroups + groups.nGroups) = pg;
		nGroups++;
		currentGroup = -1;

	}

	return pg;
}


/*
 * Iterator through the groups contained in this class.
 * Returns a pointer to the next group or NULL if there are no more  groups.
 * The Groups object should first be initialised with begin() before using this
 *
 */
Group* Groups::next() {
	Group* group = NULL;

	if (iterator < nGroups) {
		group = pGroups[iterator++];
	}

	return group;

}

/*
 * Intialise the iterator through the groups contained in this class.
 */
void Groups::begin() {

	iterator = 0;

}


