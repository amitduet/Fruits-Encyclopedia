//
//  Fruits_EncyclopediaApp.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/26.
//

import SwiftUI

@main
struct Fruits_EncyclopediaApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoadingView()
            }else{
                ContentView()
            }
        }
    }
}
