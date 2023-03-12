//
//  StoryView.swift
//  Facebook
//
//  Created by Rafal Pawelec on 01/03/2023.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 3) {
                
                ForEach(storiesList, id: \.id) { story in
                    Image(story.name)
                        .resizable()
                        .frame(width: 140, height: 200, alignment: .center)
                        .cornerRadius(20)
                        .padding(.trailing, 15)

                }
                
            }
            .padding()
            .background(Color(.systemBackground))

        }
    }


}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
