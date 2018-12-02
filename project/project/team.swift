//still need to debug
import Foundation
class Team {
    var uid:Int
    var team:String?
    var name:String?
    
    init(_ uid:Int, _ team: String="", _ name: String="") {
        self.uid = uid
        self.team = team
        self.name = name
    }
    func req1() -> [String: Any?] {
        let res:[String : Any?] = ["team": self.team]
        return res    
    }

    func req2() -> [String: Any?] {
        let res:[String: Any?] = ["member": self.name]
        return res
    }

    // Api for getter method
    func getteam() -> String?{
        return self.team
    }
    
    
    // Api's for setter
    func setteam(_ team: String) -> Void {
        self.team = team
    }
    
        
    func acceptJoinRequest() -> void {
        //update a user's team information
        Database_.addOrUpdateUser(self)
        //add a member to the team
        Database_.UpdateTeam(self)
    }
    //update team data and member data
    func removeTeamMember() -> void {
        //update a user's team to ""
        Database_.addOrUpdateUser(self)
        //delete a member from the team
        Database_.DeleteMemeber(self)
    }
    
    
}