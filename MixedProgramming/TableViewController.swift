//
//  TableViewController.swift
//  MixedProgramming
//
//  Created by 黎春阳 on 6/6/15.
//  Copyright (c) 2015 黎春阳. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UITableViewController {
    override func viewDidAppear(animated: Bool) {
        var count = tableView.visibleCells().count
        count += 20
        for(var i = 0; i < count; i++){
            if var cell = tableView.cellForRowAtIndexPath(NSIndexPath(forItem: i, inSection: 0)){
                if cell.contentView.subviews.count > 0{
                    continue
                }
                var lab = UILabel(frame: cell.contentView.frame)
                lab.text = "aaa"
                cell.contentView.addSubview(lab)
            }else{
                var cell = UITableViewCell()
                cell.frame.origin.y = cell.frame.size.height * CGFloat(i)
                var lab = UILabel(frame: cell.contentView.frame)
                lab.text = "\(i),bbb"
                cell.contentView.addSubview(lab)
                lab = UILabel(frame: CGRect(x: 0, y: 43, width: cell.contentView.frame.size.width, height: 1))
                cell.contentView.addSubview(lab)
                lab.backgroundColor = UIColor.lightGrayColor()
                tableView.addSubview(cell)
                
            }
        }
        tableView.contentSize.height = 44 * CGFloat(count)
        println(tableView.numberOfRowsInSection(0))
    }
}