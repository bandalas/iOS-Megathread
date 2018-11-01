//
//  Empleado.swift
//  CodableA18
//
//  Created by bandala on 10/8/18.
//  Copyright © 2018 mx.itesm. All rights reserved.
//

import UIKit

class Empleado: Codable {
    var nombre : String
    var ident  : Int
    var foto   : UIImage?
    
    enum CodingKeys: String, CodingKey {
        case nombre
        case ident
        case foto
    }
    
    static let documentsDirectory = FileManager().urls(for: .documentDirectory , in: .userDomainMask).first!
    static let archieveUrl = documentsDirectory.appendingPathComponent("Empleados")
    
    init(nombre: String, ident: Int, foto: UIImage?) {
        self.nombre = nombre
        self.ident  = ident
        self.foto   = foto
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(nombre, forKey: .nombre)
        try container.encode(ident, forKey:  .ident)
        
        var dataDeFoto : Data?
        if let hayFoto = foto {
            dataDeFoto = hayFoto.pngData()
        }
        else{
            dataDeFoto = nil
        }
        try container.encode(dataDeFoto, forKey: .foto)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        nombre = try container.decode(String.self, forKey: .nombre)
        ident = try container.decode(Int.self, forKey: .ident)
        
        let dataDeFoto = try container.decode(Data?.self, forKey: .foto)
        if let hayFoto = dataDeFoto{
            foto = UIImage(data: hayFoto)
        }else{
            foto = nil
        }
    }
    
}
