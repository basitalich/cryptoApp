//
//  LogInController.swift
//  BitcoinPrice
//
//  Created by basit ch on 9/15/21.
//

import UIKit

class LogInController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BitcoinSecertary.shared.bitcoinSect(url: url.api.rawValue) { dataRecieved, Error in
            if Error == nil{
                if let data = dataRecieved{
                    print(data)
                }
            }else{
                //print("error")
            }
        }
    }
    
    
    
}

