//
//  ViewController.swift
//  CodableA18
//
//  Created by bandala on 10/8/18.
//  Copyright © 2018 mx.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var empleados = [Empleado]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        empleados = [Empleado(nombre: "Karla", ident: 1997, foto: UIImage.init(named: "User")),
                     Empleado(nombre: "Dulce", ident: 1963, foto: UIImage.init(named: "User")),
                     Empleado(nombre: "Gerardo", ident: 1969, foto:nil),
                     Empleado(nombre: "Ari", ident: 1993, foto: nil)]
    }
    
    func storeEmployees() {
        do{
            let data = try PropertyListEncoder().encode(empleados)
            try data.write(to: Empleado.archieveUrl)
        }catch{
            print("Error saving the file")
        }
    }
    
    func retrieveEmployees() -> [Empleado]? {
        do{
            let data = try Data.init(contentsOf: Empleado.archieveUrl)
            let empTmp = try PropertyListDecoder().decode([Empleado].self, from: data)
            return empTmp
        }catch {
            print("Error reading data")
            return nil
        }
    }
    
    // MARK : - Accion Functions
    
    @IBAction func buttonOnSave(_ sender: Any) {
        storeEmployees()
    }
    
    @IBAction func buttonOnGet(_ sender: Any) {
        empleados.removeAll()
        guard let empTemp = retrieveEmployees() else { return }
        
        for emp in empTemp {
            print (emp.nombre, emp.ident)
        }
        empleados = empTemp
    }
    
    


}

