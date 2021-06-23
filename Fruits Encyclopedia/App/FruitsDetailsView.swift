//
//  FruitsDetailsView.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/26.
//

import SwiftUI

struct FruitsDetailsView: View {
    //MARK:- Properties
    var fruit:Fruit
    
    //MARK:- Body
    var body: some View {
        NavigationView {
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        //TItle
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors.first)
                        //Head line
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        // Nutritions
                        FruitNutrentsView(fruit: fruit)
                        // Sub headline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors.first)
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } // VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                
            } //: Scrollview
            .ignoresSafeArea()
        }//: Navigation View
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK:- Preview
struct FruitsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailsView(fruit: fruitData[0]).previewDevice("iPhone 11 Pro")
    }
}
