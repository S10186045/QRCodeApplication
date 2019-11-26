//
//  GenerateQRCodeController.swift
//  QRCodeApplication
//
//  Created by Victor Jong on 26/11/19.
//  Copyright © 2019 Victor Jong. All rights reserved.
//

import UIKit
import QRCode

class GenerateQRCodeController  : UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var txtValue: UITextField!
    
    @IBOutlet weak var imageViewQR: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.txtValue.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtValue.resignFirstResponder()
        print(txtValue.text!)
        var qrcode = QRCode(txtValue.text!)
        qrcode?.color = CIColor(rgba: "880000")
        qrcode?.backgroundColor = CIColor(rgba: "ffffff")
        imageViewQR.image = qrcode?.image
        
        return true
    }
    
    /*
    https://www.apple.com/sg/
    */
    
    
}
