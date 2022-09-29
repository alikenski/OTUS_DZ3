//
//  File.swift
//  
//
//  Created by Alish Aidarkhan on 29.09.2022.
//

import Foundation

// Имитация работы с keychain
public class KeychainService {
    public init() {}
    
    public func getToken() -> String {
        return "cskcnskldnclkjsfbnlkdc"
    }
    
    public func getRefreshToken() -> String {
        return "lklkojhjmcscmsjdncsjkd"
    }
    
    public func saveToken(token: String) {
        print("KeychainService token saved", token)
    }
    
    public func saveRefreshToken(token: String) {
        print("KeychainService refresh token saved", token)
    }
}
