//
//  FruitNutrentsView.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/27.
//

import SwiftUI

struct FruitNutrentsView: View {
    //MARK:- Properties
    let fruit:Fruit
    
    let nutraints:[String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK:- Body
    var body: some View {
        GroupBox() {
            DisclosureGroup ("Nutraintional value per 100g"){
                ForEach(0..<nutraints.count, id:\.self) { item in
                    Divider()
                        .padding(.vertical)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutraints[item])
                        }
                        .foregroundColor(fruit.gradientColors.first)
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }

        } //:Grroup Box
    }
}

//MARK:- Preview
struct FruitNutrentsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrentsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
