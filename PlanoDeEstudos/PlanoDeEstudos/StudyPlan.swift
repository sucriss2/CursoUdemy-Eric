//
//  StudyPlan.swift
//  PlanoDeEstudos
//
//  Created by Suh on 01/04/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import Foundation

class StudyPlan: Codable {
    let course: String
    let section: String
    let date: Date
    var done: Bool = false
    let id: String
    
    init(course: String, section: String, date: Date, done: Bool, id: String) {
        self.course = course
        self.section = section
        self.date = date
        self.id = id
    }
    
}
