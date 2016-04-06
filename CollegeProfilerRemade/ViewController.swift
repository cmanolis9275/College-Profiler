//
//  ViewController.swift
//  CollegeProfilerRemade
//
//  Created by Christos Manolis on 3/30/16.
//  Copyright © 2016 Christos Manolis. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    var collegeArray = [College]()
    
    @IBOutlet var myCollege: UITableView!
    required init? (coder aDecoder: NSCoder)
    {
        collegeArray = [College]()
        var college1 = College(Name: "Test", Location: "Somewhere", Students: 3)
        var college2 = College(Name: "Test2", Location: "Somewhere2", Students: 4)
        var college3 = College(Name: "Test3", Location: "Somewhere3", Students: 5)
        var college4 = College(Name: "Test4", Location: "Somewhere4", Students: 6)

        
        collegeArray.append(college1)
        collegeArray.append(college2)
        collegeArray.append(college3)
        collegeArray.append(college4)
        
        
        
        super.init(coder: aDecoder)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return collegeArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! UITableViewCell
        
        cell.textLabel?.text = collegeArray[indexPath.row].name
        
        return cell
        
    }
    
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        if let cell = tableView.cellForRowAtIndexPath(indexPath)
        {
            let item = collegeArray[indexPath.row]
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func configureTextForCell(cell: UITableViewCell, withCollege item: College)
    {
        let label = cell.viewWithTag(1) as! UILabel
        //label.text = item.text
    }
    
    func addCollegeViewController(controller: AddCollegeViewController, didFinishAddingCollege: College)
    {
        let newRowIndex = collegeArray.count
       // college.append(newRowIndex)
        
    }

    
    
    
    
    

    


}

