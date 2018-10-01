//
//  FifthViewController.swift
//  TabBarApp
//
//  Created by bandala on 10/1/18.
//  Copyright © 2018 mx.itesm. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    
    @IBOutlet weak var lblText: UILabel!
    var mensaje: String!
    var datoLogin: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblText.text = mensaje+" "+datoLogin
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
