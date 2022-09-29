//
//  ContentVM.swift
//  DZ3
//
//  Created by Alish Aidarkhan on 29.09.2022.
//

import Foundation
import NetworkLayer
import Services

class ContentVM: ObservableObject {
    @Injected var apiService:        APIService?
    @Injected var udService:         UserDefaultsService?
    @Injected var keychainService:   KeychainService?
    
    @Published var userBalance: Int = 0
    @Published var userInfo: String = ""
    @Published var userToken: String = ""
    @Published var userName: String = ""
    @Published var userCachedBalance: Int = 0
    
    private let token = "akvkodkfivnjsdnflsdv"
    
    func fetchUserBalance() {
        userBalance = apiService?.fetchUserBalance() ?? -1
    }
    
    func fetchUserInfo() {
        userInfo = apiService?.fetchUserInfo() ?? "Network Error"
    }
    
    func saveToken() {
        keychainService?.saveToken(token: token)
    }
    
    func getToken() {
        userToken = keychainService?.getToken() ?? "Token error"
    }
    
    func getUserName() {
        userName = udService?.getUserName() ?? "UD Name Error"
    }
    
    func getUserBalance() {
        userCachedBalance = udService?.getUserBalance() ?? -1
    }
    
    func saveUserBalance() {
        udService?.saveUserBalance(balance: 362)
    }
}
