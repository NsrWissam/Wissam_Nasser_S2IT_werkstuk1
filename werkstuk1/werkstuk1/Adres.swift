//
//  Adres.swift
//  werkstuk1
//
//  Created by student on 29/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class Adres: NSObject {
    let straat:String
    let huisnummer:Int
    let postcode:Int
    let gemeente:String
    
    override init() {
        self.straat = ""
        self.huisnummer = 0
        self.postcode = 0000
        self.gemeente = ""
    }
    
    init(straat:String, huisnummer:Int, postcode:Int, gemeente:String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
