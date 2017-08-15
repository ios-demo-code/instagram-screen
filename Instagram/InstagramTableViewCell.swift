//
//  InstagramTableViewCell.swift
//  Instagram
//
//  Created by Soeng Saravit on 7/8/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class InstagramTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var postImageView: UIImageView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.userImageView.layer.cornerRadius = self.userImageView.layer.frame.width / 2
        self.userImageView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(post:Post) {
        self.userLabel.text = post.post_user
        self.likeLabel.text = "\(post.like_numbers) likes"
        self.descriptionLabel.text = post.description
        
        let userimg_url = URL(string:post.user_image)
        let user_task = URLSession.shared
        user_task.dataTask(with: userimg_url!) { (data, response, error) in
            if error == nil {
                let img = UIImage(data: data!)
                DispatchQueue.main.async {
                    self.userImageView.image = img
                }
            }
        }.resume()
        
        let postimg_url = URL(string:post.post_imageUrl)
        let post_task = URLSession.shared
        post_task.dataTask(with: postimg_url!) { (data, response, error) in
            if error == nil {
                let img = UIImage(data: data!)
                DispatchQueue.main.async {
                    self.postImageView.image = img
                }
            }
        }.resume()
    }

}



















