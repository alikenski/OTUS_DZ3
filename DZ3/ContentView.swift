//
//  ContentView.swift
//  DZ3
//
//  Created by Alish Aidarkhan on 29.09.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel: ContentVM = .init()
    
    var body: some View {
        VStack {
            Text("Network Layer")
            Text("User info: \(viewModel.userInfo)")
            Text("User balance: \(viewModel.userBalance)")
                
            Text("Keychain Service")
                .padding(.top, 16)
            Text("User token: \(viewModel.userToken)")
            Button("Save token(look at console) -> akvkodkfivnjsdnflsdv") {
                viewModel.saveToken()
            }
            
            Text("UserDefaults Service")
                .padding(.top, 16)
            Text("User name: \(viewModel.userName)")
            Text("User cahced balance: \(viewModel.userCachedBalance)")
            Button("Save balance(look at console) -> 362") {
                viewModel.saveUserBalance()
            }
        }
        .onAppear {
            viewModel.fetchUserBalance()
            viewModel.fetchUserInfo()
            viewModel.getToken()
            viewModel.getUserName()
            viewModel.getUserBalance()
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
