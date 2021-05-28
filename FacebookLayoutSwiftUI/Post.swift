import Foundation

struct PostModel: Identifiable, Hashable {
    var id = UUID()
    
    let name: String
    let postBody: String
    let imageName: String
    let date: String
}
