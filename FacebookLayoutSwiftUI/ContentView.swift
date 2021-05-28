import SwiftUI

struct ContentView: View {
    
    @Binding var text: String
    
    let stories = [
        "story1", "story2", "story3",
        "story1", "story2", "story3",
        "story1", "story2", "story3"
    ]
    
    let posts = [
        PostModel(
            name: "Mark Zuckerberg",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person1",
            date: "12 minutes ago"
        ),
        PostModel(
            name: "Elon Mask",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person2",
            date: "49 minutes ago"
        ),
        PostModel(
            name: "Jef Bizos",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person3",
            date: "33 minutes ago"
        ),
        PostModel(
            name: "Leonardo Decabrio",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person1",
            date: "24 minutes ago"
        ),
        PostModel(
            name: "Cristiano Ronaldo",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person2",
            date: "55 minutes ago"
        ),
        PostModel(
            name: "Scott Adkins",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person3",
            date: "1 hour ago"
        ),
        PostModel(
            name: "Leonardo Decabrio",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person1",
            date: "5 hours ago"
        ),
        PostModel(
            name: "Cristiano Ronaldo",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person2",
            date: "2 hours ago"
        ),
        PostModel(
            name: "Scott Adkins",
            postBody: "Hey guys I made this cool website called the facebook to see if I'm cool developer or not! ha ha ha",
            imageName: "person3",
            date: "44 minutes ago"
        )
    ]
    
    let facebookBlue = UIColor(red: 23/255.0, green: 120/255.0, blue: 242/255.0, alpha: 1)
    
    var body: some View {
        VStack {
            /// stack includes the facebook text and the person image
            HStack {
                Text("facebook")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()
            
            /// the search bar under the horizontal stack
            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(12)
                .padding(.horizontal, 15)
            
            /// the stories and the posts
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack {
                        /// the stories
                        Stories(stories: stories)
                        
                        /// the posts
                        ForEach(posts, id: \.self) { post in
                            FBPost(model: post)
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                }
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
