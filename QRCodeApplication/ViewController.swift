//
//  ViewController.swift
//  QRCodeApplication
//
//  Created by Victor Jong on 26/11/19.
//  Copyright © 2019 Victor Jong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    enum Tabs : Int{
        case Dashboard
        case Middle
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginBtn(_ sender: Any) {
        let tabBarController = storyboard?.instantiateViewController(withIdentifier: "TabController") as! TabController
        
        tabBarController.selectedViewController = tabBarController.viewControllers?[Tabs.Middle.rawValue]
        
        present(tabBarController, animated: true,completion: nil)
        
    }
    

}

