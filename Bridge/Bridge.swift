//
//  Bridge.swift
//  Bridge
//
//  Created by yiqiwang(王一棋) on 12/01/2017.
//  Copyright © 2017 Melody5417. All rights reserved.
//

import Foundation

class CommunicatorBridge: OriginalMessageChannel, SecureMessageChannel {
    private var channel: Channel
    
    init(channel: Channel) {
        self.channel = channel
    }
    
    func send(message: String) {
        let msg = originalMessage(message: message)
        sendMessage(msg: msg)
    }
    
    func sendEncryptedMessage(encryptedMessage: String) {
        let msg = EncryptedMessage(message: encryptedMessage)
        sendMessage(msg: msg)
    }
    
    private func sendMessage(msg: Message) {
        msg.prepareMessage()
        channel.sendMessage(msg: msg)
    }
}
