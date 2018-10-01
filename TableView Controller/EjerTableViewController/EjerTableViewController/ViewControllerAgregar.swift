//
//  ViewControllerAgregar.swift
//  EjerTableViewController
//
//  Created by bandala on 9/13/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

protocol protocoloAgregarJugador {
    func agregaJugador(jug: Jugador) -> Void
}


class ViewControllerAgregar: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfPuntos: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var delegado : protocoloAgregarJugador!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guardarJugador(_ sender: Any) {
        let jugador = Jugador(nombre: tfNombre.text!, puntos: Int(tfPuntos.text!)!, email: tfEmail.text!)
        delegado.agregaJugador(jug: jugador)
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
