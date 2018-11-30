//
//  User.swift
//  project
//
//  Created by li yang on 11/14/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import Foundation
class User {
    var uid:Int
    var name:String?
    var weeklyArrowCount:Int
//    var prevScoringRounds:[ScoringRound]
//    var SavedPresets:[Preset]
//    var SavedJournalEntries:[JournalEntry]
    
    init(_ uid:Int, _ name: String="", _ weeklyArrowCount: Int=0) {
        self.uid = uid
        self.name = name
        self.weeklyArrowCount = weeklyArrowCount
    }
    func updaterequest() -> [String: Any?] {
        let res:[String : Any?] = ["name": self.name,
                                   "weeklyArrowCount": self.weeklyArrowCount
                                  ]
        return res
        
    }
    // Api for getter method
    func getname() -> String?{
        return self.name
    }
    
    func getweeklyArrowCount() -> Int {
        return self.weeklyArrowCount
    }
    
    // Api's for setter
    func setname(_ name: String) -> Void {
        self.name = name
    }
    
    func setweeklyArrowCount(_ weeklyArrowCount: Int ) -> Void {
        self.weeklyArrowCount = weeklyArrowCount
    }
    
    // Api for adder
    //Template method
    //    func addData(_ data: Preset) {
    //        self.SavedPresets.append(data)
    //    }
    //
    //    func addData(_ data: ScoringRound) {
    //        self.prevScoringRounds.append(data)
    //    }
    //
    //    func addData(_ data: JournalEntry) {
    //        self.SavedJournalEntries.append(data)
    //    }
    //
    //Api for remover

//func deletedata(_ data: ScoringRound) -> Void {
//        self.prevScoringRounds = self.prevScoringRounds.filter(){$0.uid != data.uid }
//
//    }
//
//    func deletedata(_ data: JournalEntry) -> Void {
//        self.SavedJournalEntries = self.SavedJournalEntries.filter(){$0.uid != data.uid }
//    }
    
    // Api for submit 
    func submitUser() -> Void {
        Database_.addOrUpdateUser(self)
    }
    
    
    
}
