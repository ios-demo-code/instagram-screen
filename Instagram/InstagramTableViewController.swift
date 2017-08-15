//
//  InstagramTableViewController.swift
//  Instagram
//
//  Created by Soeng Saravit on 7/8/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class InstagramTableViewController: UITableViewController {
    
    var posts:[Post]?

    override func viewDidLoad() {
        super.viewDidLoad()
        posts = [Post]()
        posts = Post.getData()
        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (posts?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "post-cell", for: indexPath) as! InstagramTableViewCell

        // Configure the cell...
        cell.configureCell(post: (posts?[indexPath.item])!)

        return cell
    }
    

}
