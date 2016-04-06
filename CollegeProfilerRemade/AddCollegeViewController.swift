//
//  AddCollegeViewController.swift
//  CollegeProfilerRemade
//
//  Created by Christos Manolis on 3/31/16.
//  Copyright © 2016 Christos Manolis. All rights reserved.
//

import Foundation
import UIKit


protocol AddCollegeViewControllerDelegate: class
{
    func addCollegeViewControllerDidCancel(controller: AddCollegeViewController)
    func addCollegeViewController(controller: AddCollegeViewController, didFinishAddingCollege: College)
}




class AddCollegeViewController: UITableViewController, UITextFieldDelegate
{
    weak var delegate = AddCollegeViewControllerDelegate?()
    
    @IBOutlet weak var collegeImage: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var studentsTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    @IBAction func cancel(sender: UIBarButtonItem)
    {
        delegate?.addCollegeViewControllerDidCancel(self)
    }
    
    @IBAction func Done(sender: AnyObject)
    {
        if nameTextField.text?.isEmpty == false || locationTextField.text?.isEmpty == false || studentsTextField.text?.isEmpty == false
        {
            let college = College()
            College(Name: nameTextField.text!, Location: locationTextField.text!, Students: Int(studentsTextField.text!)!)
            delegate?.addCollegeViewController(self, didFinishAddingCollege: college)
        }
        else if nameTextField.text?.isEmpty == true || locationTextField.text?.isEmpty == true || studentsTextField.text?.isEmpty == true
        {
            let alertController = UIAlertController(title: "One or more items Empty", message: "Plese fill out all textfields", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler:
                {
                    (action) -> Void in
                    print("Cancel button pressed")
                    
            })
            let OKAction = UIAlertAction(title: "OK", style: .Default, handler:
                {
                    (action) -> Void in
                    print("OK Button Pressed")
                    
            })
            alertController.addAction(cancelAction)
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion: nil)

        }
    }
    
      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}