//
//  Channels.swift
//  Bridge
//
//  Created by yiqiwang(王一棋) on 2017/1/12.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

import Foundation

protocol Channel {
    func sendMessage(msg: Message)
}

class EthernetChannel: Channel {
    func sendMessage(msg: Message) {
        print(#function + msg.contentToSend)
    }
}

class WirelessChannel: Channel {
    func sendMessage(msg: Message) {
        print(#function + msg.contentToSend)
    }
}
