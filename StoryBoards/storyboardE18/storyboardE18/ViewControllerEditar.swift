//
//  ViewControllerEditar.swift
//  storyboardE18
//
//  Created by bandala on 8/23/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerEditar: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var bttnGuardar: UIButton!
    
    var nombre: String!
    var email: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfNombre.text = nombre;
        tfEmail.text = email;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (sender as! UIButton) == bttnGuardar {
            let vistaInic = segue.destination as! ViewController
            vistaInic.nombre = tfNombre.text!
            vistaInic.email = tfEmail.text!
        }
    }


}
