//
//  ViewController.swift
//  Bridge
//
//  Created by yiqiwang(王一棋) on 2017/1/12.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bridge = CommunicatorBridge(channel: EthernetChannel())
        let communicator = Communicator(originalChannel: bridge, secureChannel: bridge)
        communicator.sendSecureMessage(message: "Hello")
        communicator.sendOriginaltextMessage(message: "Hello")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

