//
//  JournalTests.swift
//  JournalTests
//
//  Created by Hajime Hayano on 11/28/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

@testable import project
import XCTest
import Foundation

class JournalTests: XCTestCase {

	private let TEST_TITLE = "title"
	private let TEST_TEXT = "text"
	private let TEST_FUTURE_DATE = Date.distantFuture
	private let TEST_PAST_DATE = Date.distantPast
	private let TEST_PRESET = PresetBuilder(
		numEnds: 1,
		arrowsPerEnd: 1,
		targetSize: 1,
		distanceToTarget: 1)
	.division(division: Division.Barebow)
	.weather(weather: "Sunny")
	.build()
	private var TEST_SCORING_ROUND: ScoringRound!

    override func setUp() {
		TEST_SCORING_ROUND = ScoringRound(title: TEST_TITLE, date: TEST_FUTURE_DATE, preset: TEST_PRESET)
    }

	/**
	 Test the builder class to make sure that the Journal class gets instantiated properly
	*/
	func testJournalBuilder() {

		let journal = JournalBuilder(title: TEST_TITLE, date: TEST_FUTURE_DATE)
		.scoringRound(scoringRound: TEST_SCORING_ROUND)
		.text(text: TEST_TEXT)
		.build()

		XCTAssertEqual(journal.getTitle(), TEST_TITLE, "Unexpected title value")
		XCTAssertEqual(journal.getDate(), TEST_FUTURE_DATE, "Unexpected date value")
		XCTAssertEqual(journal.getText(), TEST_TEXT, "Unexpected text value")
		XCTAssertEqual(journal.getScoringRound(), TEST_SCORING_ROUND, "Unexpected ScoringRound value")
	}

	/**
	 Test the implementation of the Comparable protocol to make sure that the behavior is expected
	*/
    func testComparable() {

		let pastJournal = JournalBuilder(title: TEST_TITLE, date: TEST_PAST_DATE).build()
		let futureJournal = JournalBuilder(title: TEST_TITLE, date: TEST_FUTURE_DATE).build()
		let futureJournal1 = JournalBuilder(title: TEST_TITLE, date: TEST_FUTURE_DATE).build()

		XCTAssertTrue(pastJournal < futureJournal, "Unexpected result of < operator")
		XCTAssertFalse(futureJournal < pastJournal, "Unexpected result of < operator")
		XCTAssertFalse(futureJournal == pastJournal, "Unexpected result of == operator")
		XCTAssertTrue(futureJournal == futureJournal1, "Unexpected result of == operator")
    }

	/**
	 Test the setter methods to make sure that the values are being set properly
	*/
	func testSetters() {

		let journal = JournalBuilder(title: TEST_TITLE, date: TEST_FUTURE_DATE).build()

		XCTAssertTrue(journal.getText() == nil, "Unexpected result of getText()")
		XCTAssertTrue(journal.getScoringRound() == nil, "Unexpected result of getText()")

		journal.setText(text: TEST_TEXT)
		journal.setScoringRound(scoringRound: TEST_SCORING_ROUND)

		XCTAssertTrue(journal.getText() == TEST_TEXT, "Unexpected result of getText()")
		XCTAssertTrue(journal.getScoringRound() == TEST_SCORING_ROUND, "Unexpected result of getText()")
	}
}
