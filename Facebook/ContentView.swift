//
//  ContentView.swift
//  Facebook
//
//  Created by Rafal Pawelec on 28/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    
    
    let facebookBlue = UIColor(
        red: 23/255.0,
        green: 120/255.0,
        blue: 242/255.0,
        alpha: 1)
    
    

    
    var body: some View {
        VStack {
            HStack {
                Text("facebook")
                    .foregroundColor(Color(facebookBlue))
                .font(.system(size: 48, weight: .bold, design: .default))
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color(.secondaryLabel))
                    .frame(width: 40, height: 40)
                
            }
            .padding()

            
            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .padding(.horizontal, 15)

            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack{
  
                        StoryView()
                        
                    }
                    
                    ForEach(postsList, id: \.self) { post in
                        PostView(post:post)

                    }

                }
            }

        }
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
