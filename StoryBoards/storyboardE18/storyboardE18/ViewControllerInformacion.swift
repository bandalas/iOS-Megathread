//
//  ViewControllerInformacion.swift
//  storyboardE18
//
//  Created by bandala on 8/23/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerInformacion: UIViewController {
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lblAncho: UILabel!
    @IBOutlet weak var lblAltura: UILabel!
    
    var imagen: UIImage!
    var ancho: CGFloat!
    var altura: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgFoto.image = imagen
        lblAncho.text = String(describing: ancho!)
        lblAltura.text = String(describing: altura!)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
