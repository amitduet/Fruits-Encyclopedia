//
//  SettingsRowView.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/27.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK:- Propteris
    let name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    
    //MARK:- Body
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)

            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination:URL(string:"https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }else {
                    EmptyView()
                }
            }
        }
    }
}

//MARK:- Preview
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Aniruddha")
                .previewLayout(.fixed(width: 375, height: 60))
            SettingsRowView(name: "Website", linkLabel: "SwiftUI", linkDestination: "google.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
        }
    }
}
