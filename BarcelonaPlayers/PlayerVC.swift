//
//  PlayerVC.swift
//  BarcelonaPlayers
//
//  Created by Ronald Hernandez on 10/22/16.
//  Copyright © 2016 Ronaldoh1. All rights reserved.
//

import UIKit

class PlayerVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var players = Player.createPlayers()
    var selectedPlayer = Player()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let detailVC = segue.destinationViewController as? DetailVC else {
            return
        }
        detailVC.player = self.selectedPlayer
    }
    
}

extension PlayerVC: UITableViewDelegate {
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.selectedPlayer = players[indexPath.row]
        self.performSegueWithIdentifier("goToDetail", sender: nil)
    }
    
}


extension PlayerVC: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let player = players[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel!.text = player.name
        
        cell.backgroundView?.backgroundColor = UIColor.blueColor()
        
        return cell
    }
}

