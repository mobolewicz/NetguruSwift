//
//  PartiesTable.swift
//  NetguruSwift
//
//  Created by Marcin on 08.02.2016.
//  Copyright © 2016 Marcin. All rights reserved.
//

import UIKit

class PartiesTable: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView = UITableView(frame: self.view.frame, style: UITableViewStyle.Grouped)
        self.tableView.registerClass(PartyCell.self, forCellReuseIdentifier: PartyCell.identifier)
        self.tableView.contentInset = UIEdgeInsetsMake(-35, 0, 0, 0)
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        self.title = Constants.partiesTabName
        self.navigationItem.rightBarButtonItem = self.addButton
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.sharedInstance.partiesList.count
    }
    
    lazy var addButton:UIBarButtonItem = {
        var btn:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "addTapped")
        return btn
    }()
    
    func addTapped() {
        FlowController.sharedInstance.showCreateNewParty()
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(PartyCell.identifier, forIndexPath: indexPath) as! PartyCell
        cell.updateCellParty(DataManager.sharedInstance.partiesList[indexPath.row])
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        FlowController.sharedInstance.showPartyDetailController(DataManager.sharedInstance.partiesList[indexPath.row])
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
//            DataManager.sharedInstance.removePartyAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
}
