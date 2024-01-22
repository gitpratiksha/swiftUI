//
//  ContentView.swift
//  basic_ui
//
//  Created by Neosoft on 12/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selected = 1
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack(alignment: .leading,
                       spacing: 0
                ) {
                    //Text view
                    Text("hi ")
                        .padding()
                        .frame(maxWidth: .infinity)
                    
                        .background(.red)
                        .cornerRadius(20)
                        .padding()
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: UIScreen.main.bounds.width,height:  40)
                        .padding()
                    
                    Text("Hello, world!")
                        .font(.system(size: 23.5))
                    
                        .padding()
                    
                    
                    
                    //Button view
                    Button(action: {
                        print("Button clicked")
                    }) {
                        Text("click")
                    }.buttonStyle(.borderedProminent)
                    
                    Button("select button"){
                        
                    }
                    
                    Picker(selection: $selected, label: Text("Gender")){
                        Text("Red").tag(1)
                        Text("Green").tag(2)
                        Text("Blue").tag(3)
                        Text("Other").tag(4)
                    }.pickerStyle(.wheel)
                    
                    
                    
                    //Label view
                    Label("Lightning", systemImage: "bolt.fill")
                    
                    
                    
                    // entity creation, object creation and value access
                    DisplayPerson()
                    
                    Spacer().frame(height: 10)
                    
                    //mediaquery dynamic height and width example
                    
                    
                    
                    
                    
                    // List view
                    ListContent()
                        .padding(.top,20)
                    
                    
                    
                }
            }
        }.navigationBarTitle(Text("My Demo APP"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
