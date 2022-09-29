//
//  ServiceConfigurator.swift
//  DZ3
//
//  Created by Alish Aidarkhan on 29.09.2022.
//

import Foundation
import NetworkLayer
import Services

class ServiceConfigurator {
    static let shared = ServiceConfigurator()
    
    func register() {
        ServiceLocator.shared.addServices(service: APIService())
        ServiceLocator.shared.addServices(service: KeychainService())
        ServiceLocator.shared.addServices(service: UserDefaultsService())
    }
}
