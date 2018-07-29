//
//  PersonenData.swift
//  werkstuk1
//
//  Created by student on 29/07/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class PersonenData: NSObject {
        class func getPersonenData() -> [Persoon] {
            
            var personen:[Persoon] = []
            
            personen.insert(Persoon(naam: "Wissam", voornaam: "Nasser", foto: "kenny.jpg", adres: Adres(straat: "", huisnummer: 0, postcode: 0, gemeente: "Thoricourt"), lengtegraad: 50.60757, breedtegraad: 3.944965, telefoonnummer: ""),at:0)
            
            
            return personen
        }}
