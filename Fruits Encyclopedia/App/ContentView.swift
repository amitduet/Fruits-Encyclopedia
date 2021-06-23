//
//  ContentView.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/26.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properties
    let fruits:[Fruit] = fruitData
    @State var isSettingsShowing:Bool = false
    
    var body: some View {
        NavigationView{
            List(fruits.shuffled()) { fruit in
                NavigationLink(
                    destination: FruitsDetailsView(fruit: fruit),
                    label: {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)

                    })
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        isSettingsShowing = true
                                    }, label: {
                                        Image(systemName: "slider.horizontal.3")
                                    })
            )
            .sheet(isPresented: $isSettingsShowing, content: {
                SettingsView()
            })
        } //:Navigationview
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
