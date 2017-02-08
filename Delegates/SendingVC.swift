//
//  SendingVC.swift
//  Delegates
//
//  Created by Ahmed T Khalil on 2/2/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit

protocol DataSendingDelegate {
    func dataMessenger(data: String)
}


class SendingVC: UIViewController {
    
    //this variable will be used to check if there is a delegate conforming to the protocol (i.e. retrieve data from this VC)
    var dataDelegate:DataSendingDelegate? = nil
    
    //the data that will be sent
    @IBOutlet var dataToSend: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        
        //check if there is a delegate
        if dataDelegate != nil{
            //check if user entered data to send
            if dataToSend.text != "" {
                //send the data
                //NOTE: This VC has no idea what this function actually does since whoever adopts the responsibility of delegate--if anyone even does--has taken on the responsibility of handling this
                dataDelegate?.dataMessenger(data: dataToSend.text!)
                
                //dismiss the VC
                dismiss(animated: true, completion: nil)
            }
        }
    }
}




















