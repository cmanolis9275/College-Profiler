//
//  College.swift
//  CollegeProfilerRemade
//
//  Created by Christos Manolis on 3/30/16.
//  Copyright © 2016 Christos Manolis. All rights reserved.
//

import Foundation

class College
{
    var name: String
    var location: String
    var numberOfStudents:Int
    
    init(Name : String, Location: String, Students: Int)
    {
        self.name = Name
        self.location = Location
        self.numberOfStudents = Students
    }
    
}