//
//  PartyCell.swift
//  NetguruSwift
//
//  Created by Marcin on 08.02.2016.
//  Copyright © 2016 Marcin. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    var partyView:PartyCellView
    var partyImage: UIImageView?
    var party: Party!
    static let identifier = "partyCell"
    override init(style: UITableViewCellStyle, reuseIdentifier: String!){
        partyView = PartyCellView()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(partyView)
    }
    
    func updateCellParty(party: Party){
        self.party = party
        self.partyView.label.text = party.name
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCardText(text:String){
        self.partyView.label.text = text
    }
    
    override func layoutSubviews() {
        self.partyView.frame = self.bounds
    }
}