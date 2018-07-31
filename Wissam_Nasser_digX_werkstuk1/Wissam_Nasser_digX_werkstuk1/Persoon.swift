//
//  Persoon.swift
//  Wissam_Nasser_S2IT_werkstuk1
//
//  Created by student on 30/07/18.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit

class Persoon {
    var naam: String
    var voornaam: String
    var foto: UIImage
    var adres: Adres
    var telefoonnummer: String
    var lengtegraad: Double
    var breedtegraad: Double
    
    init() {
        naam = "null"
        voornaam = "null"
        foto = #imageLiteral(resourceName: "question-mark-button.png")
        adres = Adres()
        telefoonnummer = "null"
        lengtegraad = 0.0
        breedtegraad = 0.0
    }
    
    init(naam: String, voornaam: String, foto: UIImage, adres: Adres, telefoonnummer: String, lengtegraad: Double, breedtegraad: Double){
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.telefoonnummer = telefoonnummer
        self.lengtegraad = lengtegraad
        self.breedtegraad = breedtegraad
    }
}
