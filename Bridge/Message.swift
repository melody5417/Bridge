//
//  Message.swift
//  Bridge
//
//  Created by yiqiwang(王一棋) on 2017/1/12.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

import Foundation

protocol Message {
    init(message: String)
    func prepareMessage()
    var contentToSend: String {get}
}

class originalMessage: Message {
    private var message: String
    
    required init(message: String) {
        self.message = message
    }
    
    func prepareMessage() {
        print(#function)
    }
    
    var contentToSend: String {
        return message
    }
    
}

class EncryptedMessage: Message {
    private var originalText: String
    private var encryptedText: String?
    
    required init(message: String) {
        self.originalText = message
    }
    
    func prepareMessage() {
        print(#function)
        self.encryptedText = String(self.originalText.characters.reversed())
    }
    
    var contentToSend: String {
        return self.encryptedText!
    }
}
