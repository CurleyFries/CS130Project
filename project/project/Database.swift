
import Foundation
import Firebase
import FirebaseDatabase
class Database_ {
    // create a reference to firebase
    
    static var ref:DatabaseReference! = Database.database().reference()
    
    static func addOrUpdateUser(_ user:User) -> Void {
        let request :[String: Any?] = user.updaterequest()
        ref.child("users").child(String(user.uid)).setValue(request)
        }
    
    static func deleteUser(_ user:User) -> Void {
        ref.child("users").child(String(user.uid)).removeValue()
    }
    
     
      static func getUser(_ user:User) -> Void{
       // to do: get all the info of User and return a User object?
      ref.child("users").child(String(user.uid)).observeSingleEvent(of: .value, with: { (snapshot) in
       // Get user value
       let value = snapshot.value as? [String: Any]
       let username = value?["name"] as? String ?? ""
       user.weeklyArrowCount = value?["weeklyArrowCount"] as? Int ?? 0
       user.name = username
       print(username)
        // ...
        }) { (error) in
     print(error.localizedDescription)
            
     }
        
        
}
}

