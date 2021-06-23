//
//  SwiftUIView.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/26.
//

import SwiftUI

struct CardView: View {
    
    //MARK:- Properties
    var fruit:Fruit
    @State private var isAnimating:Bool = false
    
    //MARK:- Body
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                //Friut Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0:0.6)
                
                //Fruit Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                //Fruit Head line
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth:480)
                
                //Button: Start
                StartButtonView()
                
            } //Vstack
        } // ZStack
        .onAppear{
            withAnimation(.easeOut(duration:0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20.0)
        .padding(.horizontal, 20)
    }
    
}

//MARK:- Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: fruitData[1] ).previewLayout(.fixed(width: 320, height: 640))
    }
}
