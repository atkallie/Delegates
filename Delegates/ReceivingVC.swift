//
//  ReceivingVC.swift
//  Delegates
//
//  Created by Ahmed T Khalil on 2/2/17.
//  Copyright © 2017 kalikans. All rights reserved.
//

import UIKit


//take on the responsibility of DataSendingDelegate

class ReceivingVC: UIViewController, DataSendingDelegate {

    //tell the other VC that it will be the delegate
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSendingVC"{
            let dest = segue.destination as! SendingVC
            dest.dataDelegate = self
        }
    }
    
    @IBOutlet var dataPassed: UILabel!
    
    func dataMessenger(data: String) {
        dataPassed.text = data
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

