//
//  DatedEntry.swift
//  project
//
//  Created by Hajime Hayano on 11/28/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import Foundation

/**
 The DatedEntry interface describes objects that are able to be listed and
 sorted by the app.
*/
public protocol DatedEntry: Comparable {

	/**
	 Gets the title of the DatedEntry
	 - Returns: String: represents the title of the DatedEntry
	*/
	func getTitle() -> String

	/**
	 Gets the date of the DatedEntry
	 - Returns: Date: represents the date of the DatedEntry
	*/
	func getDate() -> Date
}

