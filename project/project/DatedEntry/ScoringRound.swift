//
//  ScoringRound.swift
//  project
//
//  Created by Hajime Hayano on 11/28/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import Foundation

/**
 The ScoringRound Class represents the list of scores corresponding to a
 specific scoring round type.
*/
public class ScoringRound: DatedEntry {

	// Required fields
	private var title: String
	private var date: Date
	private var preset: Preset

	// Generated field
	private var scores: [[Int]]

	// Constructors

	/**
	 ScoringRounds must be initialized with a Preset, since
	 it does not make sense to have a collection of scores without a
	 reference to understand the scores. Also, it does not make sense
	 to change the Preset of the ScoringRound once it is
	 created since the ScoringRound is dependent on the number of ends
	 and ends per arrow.

	 - Parameter preset: Preset that contains the metadata
	                     that determines number of ends and arrows per
	                     end.
	*/
	init(title: String, date: Date, preset: Preset) {
		self.title = title
		self.date = date
		self.preset = preset
		self.scores = Array(
			repeating: Array(
				repeating: -1,
				count: preset.getArrowsPerEnd()),
			count: preset.getNumEnds())
	}

	// Methods

	/**
	 - Returns: Preset: represents the preset that was used to
	                                initialize the ScoringRound
	*/
	func getPreset() -> Preset {
		return self.preset
	}

	/**
	 - Parameter endNumber: Int: specifies the end to search the score from
	 - Parameter arrowNumber: Int: specifies the arrowNumber from the end
	 - Returns: Int: represents the score at the specified end/arrow
	 - Throws: InvalidScorePositionError.InvalidEndNumber: invalid index for ends
	 - Throws: InvalidScorePositionError.InvalidArrowNumber: invalid index for arrows
	*/
	func getScore(endNumber: Int, arrowNumber: Int) throws -> Int {

		let endIndex = endNumber - 1
		let arrowIndex = arrowNumber - 1

		if endIndex >= self.preset.getNumEnds() || endIndex < 0 {
			throw InvalidScorePositionError.InvalidEndNumber
		}

		if arrowIndex >= self.preset.getArrowsPerEnd() || arrowIndex < 0 {
			throw InvalidScorePositionError.InvalidArrowNumber
		}

		return scores[endIndex][arrowIndex]
	}

	/**
	 - Parameter endNumber: Int: specifies the end to search the score from
	 - Parameter arrowNumber: Int: specifies the arrowNumber from the end
	 - Parameter score: Int: specifies the score to set the particular shot to
	 - Throws: InvalidScorePositionError.InvalidEndNumber: invalid index for ends
	 - Throws: InvalidScorePositionError.InvalidArrowNumber: invalid index for arrows
	*/
	func setScore(endNumber: Int, arrowNumber: Int, score: Int) throws {

		let endIndex = endNumber - 1
		let arrowIndex = arrowNumber - 1

		if endIndex >= self.preset.getNumEnds() || endIndex < 0 {
			throw InvalidScorePositionError.InvalidEndNumber
		}

		if arrowIndex >= self.preset.getArrowsPerEnd() || arrowIndex < 0 {
			throw InvalidScorePositionError.InvalidArrowNumber
		}
		
		if score < 0 || score > 10 {
			throw InvalidScoreError.InvalidScore
		}

		scores[endIndex][arrowIndex] = score
	}

	// Methods to implement the DatedEntry protocol

	public func getTitle() -> String {
		return self.title
	}

	public func getDate() -> Date {
		return self.date
	}

	// Methods to implement the Comparable protocol

	static public func < (lhs: ScoringRound, rhs: ScoringRound) -> Bool {
		return lhs.getDate() < rhs.getDate()
	}

	static public func == (lhs: ScoringRound, rhs: ScoringRound) -> Bool {
		return lhs.getDate() == rhs.getDate()
	}
}

public enum InvalidScorePositionError: Error {
	case InvalidEndNumber
	case InvalidArrowNumber
}

public enum InvalidScoreError: Error {
	case InvalidScore
}
