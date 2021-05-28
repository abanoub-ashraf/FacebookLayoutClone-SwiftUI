import SwiftUI

struct Stories: View {
    
    let stories: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 9) {
                ForEach(stories, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center)
                        .background(Color(.red))
                        .clipped()
                }
            }
        }
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories(stories: [])
    }
}
