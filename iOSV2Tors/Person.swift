//
//  Person.swift
//  iOSV2Tors
//
//  Created by Marcus Malmgren on 2023-11-09.
//

import Foundation


struct Person : Identifiable {
    var id = UUID()
    
    let firstname : String
    let lastname : String
    
    func prettyname() -> String {
        return "**" + firstname + " " + lastname + "**"
    }
}
