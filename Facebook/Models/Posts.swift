//
//  Posts.swift
//  Facebook
//
//  Created by Rafal Pawelec on 01/03/2023.
//

import Foundation


struct Post: Hashable { // hashable each will be uniqe, swift compute it as unique hash
    var name: String
    var postContent: String
    var imageName: String
    var timestamp: String
}

var postsList: [Post] = [
    Post(name: "Sherry Jia",
         postContent: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus ipsum eu tincidunt sollicitudin. Nulla sed euismod magna, mollis mattis nulla. Nullam arcu ipsum, iaculis quis orci sed, iaculis iaculis mauris",
         imageName: "profile_1",
         timestamp: "Just now"),
    Post(name: "Rush Colton",
         postContent: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus ipsum eu tincidunt sollicitudin. Nulla sed euismod magna, mollis mattis nulla. Nullam arcu ipsum, iaculis quis orci sed, iaculis iaculis mauris",
         imageName: "profile_2",
         timestamp: "Just now"),
    Post(name: "Jeshickah Cade",
         postContent: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus ipsum eu tincidunt sollicitudin. Nulla sed euismod magna, mollis mattis nulla. Nullam arcu ipsum, iaculis quis orci sed, iaculis iaculis mauris",
        imageName: "profile_3",
        timestamp: "Just now"),
    Post(name: "Joseph Capuchius (Joe)",
         postContent: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus ipsum eu tincidunt sollicitudin. Nulla sed euismod magna, mollis mattis nulla. Nullam arcu ipsum, iaculis quis orci sed, iaculis iaculis mauris",
        imageName: "profile_4",
        timestamp: "Just now"),
    Post(name: "Murloch Cupid",
         postContent: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc maximus ipsum eu tincidunt sollicitudin. Nulla sed euismod magna, mollis mattis nulla. Nullam arcu ipsum, iaculis quis orci sed, iaculis iaculis mauris",
        imageName: "profile_5",
        timestamp: "Just now")
]
