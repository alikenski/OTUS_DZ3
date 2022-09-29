//
//  File.swift
//  
//
//  Created by Alish Aidarkhan on 29.09.2022.
//

import Foundation

// Имитация работы с UD
public class UserDefaultsService {
    public init() {}
    
    public func getUserName() -> String {
        return "Alisher"
    }
    
    public func getUserBalance() -> Int {
        return 99
    }
    
    public func saveUserBalance(balance: Int) {
        print("UserDefaultsService balance saved", balance)
    }
}
