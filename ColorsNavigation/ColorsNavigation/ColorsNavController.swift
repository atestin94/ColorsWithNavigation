//
//  ColorsNavController.swift
//  ColorsNavigation
//
//  Created by Alex Testin on 7/21/17.
//  Copyright © 2017 Alex Testin. All rights reserved.
//

import Foundation
import UIKit

class ColorsNavController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let colors: [(color: UIColor, text: String)] = [
        (UIColor.red,"red"),
        (UIColor.orange,"orange"),
        (UIColor.yellow,"yellow"),
        (UIColor.green,"green"),
        (UIColor.blue,"blue"),
        (UIColor.purple,"purple"),
        (UIColor.brown,"brown")]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(colors.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = colors[indexPath.row].text
        cell.backgroundColor = colors[indexPath.row].color
        
        return(cell)
    }
}

