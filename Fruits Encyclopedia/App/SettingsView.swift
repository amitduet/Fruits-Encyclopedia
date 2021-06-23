//
//  SettingsView.swift
//  Fruits Encyclopedia
//
//  Created by BJIT on 2021/05/27.
//

import SwiftUI

struct SettingsView: View {
    //MARK:- Properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding:Bool = false
    
    //MARK:- Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing:20) {
                    
                    //Section 1
                    GroupBox(label:
                        SettingsLabelView(labelText: "Fruits Encyclopedia", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, calories. None have cholestorls. Fruits are sources of many nutrients including potassium, dietary, fiber, vitamins and more.")
                                .font(.footnote)
                        }
                    }
                    // Section 2
                    GroupBox(label:
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical, 4)
                        Text("If you wish restart the application by toggle switch in this box. That way its start onboarding process you will see welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8.0, style: .continuous))

                        )
                    }
                    
                    //Section 3

                    GroupBox(label:
                                SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
                        SettingsRowView(name: "Developer", content: "Aniruddha")
                        SettingsRowView(name: "Designer", content: "Khalid")
                        SettingsRowView(name: "Compatibility", content: "iOS14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI", linkDestination: "google.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@amit", linkDestination: "twitter.com/amit")
                        SettingsRowView(name: "Swift UI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0")

                    }
                    
                    
                }//:VStack
                .navigationBarTitle("Settings", displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }, label: {
                                            Image(systemName: "xmark")
                                        })
                )
                .padding()
                
            }//:ScrollView
        }//:Navigation
    }
}

//MARK:- Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
