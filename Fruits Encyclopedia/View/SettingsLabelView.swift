//
//  SettingsLabelView.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/27.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK:- Properties
    let labelText:String
    let labelImage:String
    
    //MARK:- Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK:- Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits Encyclopedia", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
