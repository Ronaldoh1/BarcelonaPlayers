//
//  DetailsVC.swift
//  BarcelonaPlayers
//
//  Created by Ronald Hernandez on 10/22/16.
//  Copyright © 2016 Ronaldoh1. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var player = Player()
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var country: UILabel!
    
    @IBOutlet weak var height: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.imageView.image = player.image
        
        self.imageView.layer.cornerRadius = self.imageView.frame.size.width / 2
        self.imageView.clipsToBounds = true
        
        self.nameLabel.text = player.name
        self.age.text = String(player.age)
        self.country.text = player.country
        self.height.text = player.height
    }
    
    
}



