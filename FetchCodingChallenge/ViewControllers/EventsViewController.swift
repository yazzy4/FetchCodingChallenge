//
//  EventsViewController.swift
//  FetchCodingChallenge
//
//  Created by Yaz Burrell on 4/2/21.
//

import UIKit

class EventsViewController: UITableViewController, UISearchBarDelegate {
    
    let eventCell = "eventCell"

    override func viewDidLoad() {
        super.viewDidLoad()
            title = "Events"
//        tableView.addSubview(EventViewCell())
        tableView.backgroundColor = .white
        tableView.register(EventViewCell.self, forCellReuseIdentifier: eventCell)
    }
}
