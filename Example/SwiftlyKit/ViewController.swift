//
//  ViewController.swift
//  SwiftlyKit
//
//  Created by hujewelz on 03/30/2019.
//  Copyright (c) 2019 hujewelz. All rights reserved.
//

import UIKit
import SwiftlyKit

class ViewController: UITableViewController, Refreshable {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        beginRefreshing(false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func viewForHeader() -> UIScrollView? {
        return tableView
    }
    
    func viewForFooter() -> UIScrollView? {
        return tableView
    }

}

