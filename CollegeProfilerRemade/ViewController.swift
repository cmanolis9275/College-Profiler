//
//  ViewController.swift
//  CollegeProfilerRemade
//
//  Created by Christos Manolis on 3/30/16.
//  Copyright © 2016 Christos Manolis. All rights reserved.
//

import UIKit

class ViewController: UITableViewController
{
    var college = [College]()
    
    required init? (coder aDecoder: NSCoder)
    {
        college = [College]()
        let college1 = College(Name: "Test", Location: "Somewhere", Students: 3)
        let college2 = College(Name: "Test2", Location: "Somewhere2", Students: 4)
        let college3 = College(Name: "Test3", Location: "Somewhere3", Students: 5)
        let college4 = College(Name: "Test4", Location: "Somewhere4", Students: 6)

        
        college.append(college1)
        college.append(college2)
        college.append(college3)
        college.append(college4)
        
        
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return college.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("College", forIndexPath: indexPath)
        
        let item = college[indexPath.row]
        return cell
        
    }
    
    func configureTextForCell(cell: UITableViewCell, withCollege item: College)
    {
        let label = cell.viewWithTag(1) as! UILabel
        label.text = item.text
    }
    
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
//    {
//        if let cell = tableView.cellForRowAtIndexPath(indexPath)
//        {
//            let item = college[indexPath.row]
//            item.toggle
//        }
//    }
    
    

    


}

