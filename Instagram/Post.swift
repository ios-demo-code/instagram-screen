//
//  Post.swift
//  Instagram
//
//  Created by Soeng Saravit on 7/8/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import Foundation

class Post {
    var post_user:String
    var user_image:String
    var post_imageUrl:String
    var like_numbers:Int
    var description:String
    
    init() {
        self.post_user = ""
        self.user_image = ""
        self.like_numbers = 0
        self.post_imageUrl = ""
        self.description = ""
    }
    
    static func getData() -> [Post]{
        var posts:[Post] = [Post]()
        
        let post = Post()
        post.post_user = "soeng_saravit"
        post.user_image = "https://scontent.fpnh4-1.fna.fbcdn.net/v/t1.0-9/19437243_1476913465706495_8927008966253627726_n.jpg?oh=2bf63f0186f203b2ec72c0808323b16c&oe=59FFBF78"
        post.like_numbers = 100
        post.post_imageUrl = "https://tripangkor.com/wp-content/uploads/2015/11/Angkor-Wat-Restauration.jpg"
        post.description = "Angkor wat is the most famous temple."
        
        posts.append(post)
        posts.append(post)
        posts.append(post)
        posts.append(post)
        
        return posts
    }
}

















