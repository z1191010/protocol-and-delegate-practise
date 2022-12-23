//enum directions: CaseIterable {
//    case up
//    case down
//    case left
//    case right
//}
//
//let direction = directions.allCases.randomElement()
//
//class Song {
//    let name: String
//    let duration: Int
//    init(name: String, duration: Int){
//        self.name = name
//        self.duration = duration
//    }
//
//    var formattedDuration: String {
//        let minutes = duration / 60
//        let seconds = duration % 60
//        return "\(minutes)分\(seconds)秒"
//
//    }
//}
//
//struct Song {
//    let title: String
//    let artist: String
//    let duration: Int
//
//    var formattedDuration: String {
//        let minutes = duration / 60
//        let seconds = duration % 60
//        return "\(minutes)分\(seconds)秒"
//    }
//    var formattedTitle: String {
//        "\(title) by \(artist)"
//    }
//}
//
//let song = Song(title: "黑色幽默", artist: "周杰倫", duration: 330)
//
//song.formattedDuration
//song.formattedTitle

//property observer
class Baby {
    var name = "寧寧"{
        willSet {
            print("Baby name will change form \(name) to \(newValue)")
        }
        
        didSet{
            print("Baby name already change form \(oldValue) to \(name)")
        }
    }
}

let baby = Baby()
baby.name = "點點"

