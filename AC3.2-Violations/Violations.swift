//
//  Violations.swift
//  AC3.2-Violations
//
//  Created by C4Q on 10/16/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation


class Violation {
    
    let action: String
    let boro: String
    let critical: String
    let cuisine: String
    let dba: String
    let date: String
    let phone: String
    let score: String
    let street: String
    let code: String
    let description: String
    let zip: String
    
    init(action: String, boro: String, critical: String, cuisine: String, date: String, phone: String, score: String, street: String, code: String, description: String, zip: String, dba: String) {
        self.action = action
        self.boro = boro
        self.critical = critical
        self.cuisine = cuisine
        self.date = date
        self.phone = phone
        self.score = score
        self.street = street
        self.code = code
        self.description = description
        self.zip = zip
        self.dba = dba
    }
    
    convenience init?(withDict dict: [String:Any]) {
        if let action = dict["action"] as? String,
            let boro = dict["boro"] as? String,
            let critical = dict["critical_flag"] as? String,
            let cuisine = dict["cuisine_description"] as? String,
            let date = dict["inspection_date"] as? String,
            let phone = dict["phone"] as? String,
            let zip =  dict["zipcode"] as? String,
            let score = dict["score"] as? String,
            let street = dict["street"] as? String,
            let code = dict["violation_code"] as? String,
            let description = dict["violation_description"] as? String,
            let dba = dict["dba"] as? String
            {
                self.init(action: action, boro: boro, critical: critical, cuisine: cuisine, date: date, phone: phone, score: score, street: street, code: code, description: description, zip: zip, dba: dba)
        }
        else {
            return nil
        }
    }
    
}

















