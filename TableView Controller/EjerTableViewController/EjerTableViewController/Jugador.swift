//
//  Jugador.swift
//  EjerTableViewController
//
//  Created by Yolanda Martinez on 2/12/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class Jugador: NSObject {
    
    var nombre : String = ""
    var puntos : Int = 0
    var email : String = ""
    
    override init() {
        self.nombre = ""
        self.puntos = 0
        self.email = ""
    }
    
    init(nombre : String, puntos : Int, email : String) {
        self.nombre = nombre
        self.puntos = puntos
        self.email = email
    }
    

}
