//
//  Preset.swift
//  project
//
//  Created by Hajime Hayano on 11/30/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import Foundation

/**
 The Preset Class represents the full metadata pertaining to the particular
 training session.
*/
public class Preset: Equatable {

	// Required fields
	private var numEnds: Int
	private var arrowsPerEnd: Int
	private var targetSize: Int
	private var distanceToTarget: Int

	// Optional fields
	private var division: Division?
	private var weather: String?

	// Constructors

	/**
	 The Preset class should be instantiated using a PresetBuilder to make
	 instantiation easier in addition to clearly marking required fields and
	 optional fields. This constructor should ONLY be called by the
	 PresetBuilder class.

	 - Parameter builder: PresetBuilder class that contains the field data
	                      to create the Preset class
	*/
	init(builder: PresetBuilder) {
		self.numEnds = builder.numEnds
		self.arrowsPerEnd = builder.arrowsPerEnd
		self.targetSize = builder.targetSize
		self.distanceToTarget = builder.distanceToTarget
		self.division = builder.division
		self.weather = builder.weather
	}

	// Methods

	/**
	 Sets a new value for the number of ends associated to the Preset

	- Parameter numEnds: new Int value for number of ends
	*/
	public func setNumEnds(numEnds: Int) {
		self.numEnds = numEnds
	}

	/**
	 Sets a new value for the number of arrows per ends associated to the Preset

	- Parameter arrowsPerEnd: new Int value for number of arrows per end
	*/
	public func setArrowsPerEnd(arrowsPerEnd: Int) {
		self.arrowsPerEnd = arrowsPerEnd
	}

	/**
	 Sets a new value for the target size associated to the Preset

	- Parameter targetSize: new Int value for target size
	*/
	public func setTargetSize(targetSize: Int) {
		self.targetSize = targetSize
	}

	/**
	 Sets a new value for the distance to the target associated to the Preset

	- Parameter distanceToTarget: new Int value for distance to the target
	*/
	public func setDistanceToTarget(distanceToTarget: Int) {
		self.distanceToTarget = distanceToTarget
	}

	/**
	 Sets a new value for the division associated to the Preset

	- Parameter division: new Division value for division
	*/
	public func setDivision(division: Division) {
		self.division = division
	}

	/**
	 Sets a new value for the weather associated to the Preset

	- Parameter weather: new String value for weather
	*/
	public func setWeather(weather: String) {
		self.weather = weather
	}

	/**
	 Gets the number of ends associated to the Preset

	- Returns: Int: Returns an Int value representing the number of ends
	                associated with the Preset
	*/
	public func getNumEnds() -> Int {
		return self.numEnds
	}

	/**
	 Gets the number of arrows per ends associated to the Preset

	- Returns: Int: Returns an Int value representing the number of arrows per 
	                end associated with the Preset
	*/
	public func getArrowsPerEnd() -> Int {
		return self.arrowsPerEnd
	}

	/**
	 Gets the target size associated to the Preset

	- Returns: Int: Returns an Int value representing the target size
	                associated with the Preset
	*/
	public func getTargetSize() -> Int {
		return self.targetSize
	}

	/**
	 Gets the distance to the target associated to the Preset

	- Returns: Int: Returns an Int value representing the distance to the target
	                associated with the Preset
	*/
	public func getDistanceToTarget() -> Int {
		return self.distanceToTarget
	}

	/**
	 Gets the division associated to the Preset

	- Returns: Division: Returns an optional Division object representing the division
	                     associated with the Preset
	*/
	public func getDivision() -> Division? {
		return self.division
	}

	/**
	 Gets the weather associated to the Preset

	- Returns: String: Returns an optional String object representing the weather
	                    associated with the Preset
	*/
	public func getWeather() -> String? {
		return self.weather
	}

	// Methods to implement the Equatable protocol

	static public func == (lhs: Preset, rhs: Preset) -> Bool {

		if lhs.numEnds != rhs.numEnds {
			return false
		}

		if lhs.arrowsPerEnd != rhs.arrowsPerEnd {
			return false
		}

		if lhs.targetSize != rhs.targetSize {
			return false
		}

		if lhs.distanceToTarget != rhs.distanceToTarget {
			return false
		}

		if lhs.division != rhs.division {
			return false
		}

		if lhs.weather != rhs.weather {
			return false
		}

		return true
	}
}

/**
 PresetBuilder makes instantiating the Preset class easier

 Example Use Case:
 let preset = PresetBuilder(numEnds: foo, arrowsPerEnd: bar, targetSize: baz, distanceToTarget: qux)
              .division(division: foobar)
              .weather(weather: bazqux)
              .build()
*/
public class PresetBuilder {

	// Required fields
	var numEnds: Int
	var arrowsPerEnd: Int
	var targetSize: Int
	var distanceToTarget: Int

	// Optional fields
	var division: Division?
	var weather: String?

	init(numEnds: Int, arrowsPerEnd: Int, targetSize: Int, distanceToTarget: Int) {
		self.numEnds = numEnds
		self.arrowsPerEnd = arrowsPerEnd
		self.targetSize = targetSize
		self.distanceToTarget = distanceToTarget
	}

	func division(division: Division?) -> PresetBuilder {
		self.division = division
		return self
	}

	func weather(weather: String?) -> PresetBuilder {
		self.weather = weather
		return self
	}

	func build() -> Preset {
		return Preset(builder: self)
	}
}

public enum Division {
	case Barebow
	case Recurve
	case Bowhunter
	case Compound
}

