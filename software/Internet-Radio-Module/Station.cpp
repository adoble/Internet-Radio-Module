/*
 * Station.cpp
 *
 *  Created on: 11 May 2019
 *      Author: Andrew
 */

#include "Station.h"

Station::Station(char* name, char* url) {
	this->name = name;
	this->url = url;

}

Station::~Station() {

}

char* Station::getName() {
	return name;
}


char* Station::getURL() {
	return url;
}

/*
 * Return the ordinal position of the station in the group
 */
 int Station::getIndex() {
	 return index;
 }
