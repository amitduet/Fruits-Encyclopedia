//
//  StartButton.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/26.
//

import SwiftUI

struct StartButtonView: View {
    //MARK:- Properties
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    ///MARK:- Body
    var body: some View {
        
        Button(action: {
            print("Button Pressed")
            isOnboarding = false
        }) {
            HStack (spacing:8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                    
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth:1.25)
            )
        } // Button
        .accentColor(.white)
    }
}

//MARK:- Preview
struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
