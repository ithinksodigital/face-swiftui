//
//  PostView.swift
//  Facebook
//
//  Created by Rafal Pawelec on 01/03/2023.
//

import SwiftUI

struct PostView: View {
    
    let facebookBlue = UIColor(
        red: 23/255.0,
        green: 120/255.0,
        blue: 242/255.0,
        alpha: 1)
    
    
    @State var isLiked: Bool = false
    
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                Image(post.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                VStack {
                    HStack {
                        Text(post.name)
                            .font(.system(size: 16, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text(post.timestamp)
                            .fontWeight(.regular)
                            .font(.footnote)
                            .foregroundColor(Color(.secondaryLabel))
                        Image(systemName: "globe.europe.africa.fill")
                            .resizable()
                            .frame(width: 10, height: 10)
                            .foregroundColor(Color(.secondaryLabel))
                            
                        Spacer()
                    }.padding(.top, -8)

                }
                Spacer()
            }
            HStack{
                Text(post.postContent)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
            HStack {
                Button(action: {
                    isLiked.toggle()
                    
                }, label: {
                    
                    if isLiked {
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(Color(facebookBlue))
                        Text("Liked")
                            .foregroundColor(Color(facebookBlue))
                    } else {
                        Image(systemName: "hand.thumbsup")
                        Text("Like")

                    }

                })
                .foregroundColor(Color(.secondaryLabel))
                .fontWeight(.bold)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.left")
                    Text("Comment")
                })
                .foregroundColor(Color(.secondaryLabel))
                .fontWeight(.bold)
                Spacer()

                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrowshape.turn.up.forward")
                    Text("Share")
                })
                .foregroundColor(Color(.secondaryLabel))
                .fontWeight(.bold)
                
            }
            .padding()
        }
        .padding()
        .background(Color(.systemBackground))

    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: postsList[3])
    }
}
