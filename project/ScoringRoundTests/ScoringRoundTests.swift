//
//  ScoringRoundTests.swift
//  ScoringRoundTests
//
//  Created by Hajime Hayano on 12/2/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

@testable import project
import XCTest
import Foundation

class ScoringRoundTests: XCTestCase {

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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

	func testGetterSetter() {

		let scoringRound = ScoringRound(title: TEST_TITLE, date: TEST_FUTURE_DATE, preset: TEST_PRESET)

		XCTAssertEqual(scoringRound.getTitle(), TEST_TITLE, "Unexpected title value")
		XCTAssertEqual(scoringRound.getDate(), TEST_FUTURE_DATE, "Unexpected date value")
		XCTAssertEqual(scoringRound.getPreset(), TEST_PRESET, "Unexpected preset value")
		try XCTAssertEqual(scoringRound.getScore(endNumber: 1, arrowNumber: 1), -1, "Unexpected score value")

		do {
			try scoringRound.setScore(endNumber: 1, arrowNumber: 1, score: 5)
		} catch {
		    print("Unexpected error: \(error).")
		}

		try XCTAssertEqual(scoringRound.getScore(endNumber: 1, arrowNumber: 1), 5, "Unexpected score value")
	}

	func testComparable() {
		let pastScoringRound = ScoringRound(title: TEST_TITLE, date: TEST_PAST_DATE, preset: TEST_PRESET)
		let futureScoringRound = ScoringRound(title: TEST_TITLE, date: TEST_FUTURE_DATE, preset: TEST_PRESET)
		let futureScoringRound1 = ScoringRound(title: TEST_TITLE, date: TEST_FUTURE_DATE, preset: TEST_PRESET)

		XCTAssertTrue(pastScoringRound < futureScoringRound, "Unexpected result of < operator")
		XCTAssertFalse(futureScoringRound < pastScoringRound, "Unexpected result of < operator")
		XCTAssertFalse(futureScoringRound == pastScoringRound, "Unexpected result of == operator")
		XCTAssertTrue(futureScoringRound == futureScoringRound1, "Unexpected result of == operator")
	}

	func testErrors() {

		let scoringRound = ScoringRound(title: TEST_TITLE, date: TEST_FUTURE_DATE, preset: TEST_PRESET)

		XCTAssertThrowsError(try scoringRound.getScore(endNumber: 2, arrowNumber:1)) { error in
			XCTAssertEqual(
				error as? InvalidScorePositionError,
			   	InvalidScorePositionError.InvalidEndNumber,
			   	"Unexpected error")
		}

		XCTAssertThrowsError(try scoringRound.getScore(endNumber: 1, arrowNumber: 2)) { error in
			XCTAssertEqual(
				error as? InvalidScorePositionError,
			   	InvalidScorePositionError.InvalidArrowNumber,
			   	"Unexpected error")
		}

		XCTAssertThrowsError(try scoringRound.setScore(endNumber: 1, arrowNumber: 1, score: 11)) { error in
			XCTAssertEqual(
				error as? InvalidScoreError,
			   	InvalidScoreError.InvalidScore,
			   	"Unexpected error")
		}
	}
}

