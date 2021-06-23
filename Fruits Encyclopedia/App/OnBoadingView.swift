//
//  OnBoadingView.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/26.
//

import SwiftUI

struct OnBoadingView: View {
    
    //MARK:- Properties
    let fruits:[Fruit] = fruitData
    //MARK:- Body
    var body: some View {
        TabView {
            ForEach(fruits) { fruit in
                CardView(fruit: fruit)
            }
        } // TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK:- Preview
struct OnBoadingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoadingView().previewDevice("iPhone 11 Pro")
    }
}
