//
//  TableViewController.swift
//  EjerTableViewController
//
//  Created by Yolanda Martinez on 2/12/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregarJugador {
   
    

    var listaJugadores = [Jugador]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var jugador = Jugador(nombre: "Juan", puntos: 2500, email: "juan@hotmail.com")
        listaJugadores.append(jugador)
        
        jugador = Jugador(nombre: "Carolina", puntos: 2800, email: "caro@gmail.com")
        listaJugadores.append(jugador)
        
        jugador = Jugador(nombre: "Karla", puntos: 3200, email: "karla@gmail.com")
        listaJugadores.append(jugador)
        
        title = "Jugadores"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaJugadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.imageView?.image = #imageLiteral(resourceName: "user")
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        return cell
    }
    

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "muestra"{
            let vistaJug = segue.destination as! ViewController
            
            let indexPath = tableView.indexPathForSelectedRow!
            
            vistaJug.jug = listaJugadores[indexPath.row]
        }
        else{
            let viewAgregar = segue.destination as! ViewControllerAgregar
            viewAgregar.delegado = self
            
        }
    }
    
    func agregaJugador(jug: Jugador) {
        listaJugadores.append(jug)
        tableView.reloadData()
    }
    

}
