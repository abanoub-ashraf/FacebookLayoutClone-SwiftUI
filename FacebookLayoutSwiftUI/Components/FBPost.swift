import SwiftUI

struct FBPost: View {
    
    @State var isLiked: Bool = false
    
    let model: PostModel
    
    var body: some View {
        VStack {
            /// the profile pic and the name
            HStack {
                Image(model.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                
                VStack {
                    HStack {
                        Text(model.name)
                            .foregroundColor(.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    
                    HStack {
                        Text(model.date)
                            .foregroundColor(Color(.secondaryLabel))
                        
                        Spacer()
                    }
                }
                
                Spacer()
            }
            
            /// the text of the post
            HStack {
                Text(model.postBody)
                    .font(.system(size: 24, weight: .regular, design: .default))
                    .padding(2)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                
                Spacer()
            }
                    
            /// the like, comment, and share buttons
            HStack {
                // the like button
                Button {
                    // the action of the button
                    isLiked.toggle()
                } label: {
                    // the title of the button
                    Text(isLiked ? "Liked" : "Like")
                }
                
                Spacer()
                
                // the coment button
                Button {
                    // the action of the button
                } label: {
                    // the title of the button
                    Text("Comment")
                }
                
                Spacer()
                
                // the share button
                Button {
                    // the action of the button
                } label: {
                    // the title of the button
                    Text("Share")
                }

            }
            .padding(4)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}

struct FBPost_Previews: PreviewProvider {
    static var previews: some View {
        FBPost(model: PostModel(
                name: "",
                postBody: "",
                imageName: "",
                date: ""
        ))
    }
}
