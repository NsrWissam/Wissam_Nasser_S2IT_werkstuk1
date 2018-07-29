//
//  Adres.swift
//  werkstuk1
//
//  Created by student on 29/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
import UIKit

class Adres: NSObject {
    let straat:String
    let huisnummer:Int
    let postcode:Int
    let gemeente:String
    
    init(straat:String, huisnummer:Int, postcode:Int, gemeente:String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
