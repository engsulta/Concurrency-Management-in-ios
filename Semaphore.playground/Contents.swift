import Foundation
import PlaygroundSupport


PlaygroundPage.current.needsIndefiniteExecution = true

var availableRooms : Int =  4
// 0 means that there is no available rooms

func reservationForMeetingRoom(fees:String) {
    
    // check available room
    if  availableRooms > 0  {
        print(fees)
        availableRooms -= 1
    }else {
       // print("there is no rooms available")
    }
}

var reservationsRequests = 4

for request in 1...reservationsRequests{
    
    DispatchQueue.global(qos: .utility).async {
        // for slow reservation will print 🍎
        
        reservationForMeetingRoom(fees: "🍎")
        
    }
}

for request in 1...reservationsRequests{
    
    DispatchQueue.global(qos: .userInteractive).async {
       // for quick reservation 🍏
       
        reservationForMeetingRoom(fees: "🍏")
        
    }
}


