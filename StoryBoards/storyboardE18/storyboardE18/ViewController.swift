//
//  ViewController.swift
//  storyboardE18
//
//  Created by Yolanda Martinez on 1/24/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    
    var email : String!
    var nombre : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindInformacion(unwindSegue: UIStoryboardSegue){
        //  Empty on purpose
        //   Used to return
    }
    
    @IBAction func unwindEditar(unwindSegue: UIStoryboardSegue){
        tfNombre.text = nombre
        tfEmail.text = email
    }
    
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "info") {
            let vistaInfo = segue.destination as! ViewControllerInformacion
            vistaInfo.imagen = imgFoto.image
            vistaInfo.ancho = imgFoto.frame.size.width
            vistaInfo.altura = imgFoto.frame.size.height
        }
        else {
            let vistaEditar = segue.destination as! ViewControllerEditar
            vistaEditar.email = tfEmail.text!
            vistaEditar.nombre = tfNombre.text!
        }
     }
    


}

