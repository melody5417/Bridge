//
//  Communicator.swift
//  Bridge
//
//  Created by yiqiwang(王一棋) on 12/01/2017.
//  Copyright © 2017 Melody5417. All rights reserved.
//

import Foundation

protocol OriginalMessageChannel {
    func send(message:String)
}

protocol SecureMessageChannel {
    func sendEncryptedMessage(encryptedMessage:String)
}

class Communicator {
    private let originalChannel:OriginalMessageChannel
    private let secureChannel:SecureMessageChannel
    
    init (originalChannel:OriginalMessageChannel, secureChannel:SecureMessageChannel) {
        self.originalChannel = originalChannel
        self.secureChannel = secureChannel
    }
    
    func sendOriginaltextMessage(message:String) {
        self.originalChannel.send(message: message)
    }
    
    func sendSecureMessage(message:String) {
        self.secureChannel.sendEncryptedMessage(encryptedMessage: message)
    }
}
