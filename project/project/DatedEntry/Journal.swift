//
//  Journal.swift
//  project
//
//  Created by Hajime Hayano on 11/28/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import Foundation

/**
 The Journal Class represents the journal entries created by the users. It
 includes a String field representing the text of the journal and a list of
 DatedEntry’s representing any additional information.
*/
public class Journal: DatedEntry {

	// Required fields
	private var title: String
	private var date: Date

	// Optional fields
	private var text: String?
	private var scoringRound: ScoringRound?

	// Constructors

	/**
	 The Journal class should be instantiated using a JournalBuilder to make
	 instantiation easier in addition to clearly marking required fields and
	 optional fields. This constructor should ONLY be called by the
	 JournalBuilder class.

	 - Parameter builder: JounalBuilder class that contains the field data
	                      to create the Journal class
	*/
	init(builder: JournalBuilder) {
		self.title = builder.title
		self.date = builder.date
		self.text = builder.text
		self.scoringRound = builder.scoringRound
	}

	// Methods

	/**
	 Gets the text associated to the Journal entry

	- Returns: String?: Returns an optional String value since the text in
	                    journals are optional
	*/
	public func getText() -> String? {
		return self.text
	}

	/**
	 Gets the ScoringRound associated to the Journal entry

	- Returns: ScoringRound?: Returns an optional ScoringRound object since the
	                          ScoringRound in journals are optional
	*/
	public func getScoringRound() -> ScoringRound? {
		return self.scoringRound
	}

	/**
	 Sets a new value for the text associated to the Journal entry

	- Parameter text: new String value for text
	*/
	public func setText(text: String) {
		self.text = text
	}

	/**
	 Sets a new value for the ScoringRound associated to the Journal entry

	- Parameter scoringRound: new ScoringRound value for text
	*/
	public func setScoringRound(scoringRound: ScoringRound) {
		self.scoringRound = scoringRound
	}

	// Methods to implement the DatedEntry protocol

	public func getTitle() -> String {
		return self.title
	}

	public func getDate() -> Date {
		return self.date
	}

	// Methods to implement the Comparable protocol

	static public func < (lhs: Journal, rhs: Journal) -> Bool {
		return lhs.getDate() < rhs.getDate()
	}

	static public func == (lhs: Journal, rhs: Journal) -> Bool {
		return lhs.getDate() == rhs.getDate()
	}
}

/**
 JournalBuilder makes instantiating the Journal class easier

 Example Use Case:
 let journal = JournalBuilder(title: foo, date: bar)
               .text(text: baz)
               .scoringRound(scoringRound: qux)
               .build()
*/
public class JournalBuilder {

	// Required fields
	var title: String
	var date: Date
	
	// Optional fields
	var text: String?
	var scoringRound: ScoringRound?

	init(title: String, date: Date) {
		self.title = title
		self.date = date
	}

	func text(text: String?) -> JournalBuilder {
		self.text = text
		return self
	}

	func scoringRound(scoringRound: ScoringRound?) -> JournalBuilder {
		self.scoringRound = scoringRound
		return self
	}

	func build() -> Journal {
		return Journal(builder: self)
	}
}
