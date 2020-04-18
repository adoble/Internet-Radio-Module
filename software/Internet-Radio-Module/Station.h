/*
 * Station.h
 *
 *  Created on: 11 May 2019
 *      Author: Andrew
 */

#ifndef STATION_H_
#define STATION_H_

#include <Arduino.h>;

class Station {
public:
	Station(char* name, char* url);
	virtual ~Station();

	char* getName();
	char* getURL();
	int getIndex(); 

private:
	char* name; // Pointer to the station strings in the data.
		          // Doing it this way as all the data is in the
		          // data char array so saving memory.
	char* url;  // Pointer to the station url strings in the data.
	int index;  // The ordinal position of the station in the group

	friend class Group;
};

#endif /* STATION_H_ */
