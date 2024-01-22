//
//  ContentView.swift
//  demo_ios_app
//
//  Created by Neosoft on 08/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack(spacing: 20) {
                 Image(systemName: "person.circle.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.gray)
                    
                 TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    
                 SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                 Button {
                    // Write code to handle login action
                 } label: {
                    Text("Log In")
                       .padding(.horizontal, 30)
                       .padding(.vertical, 10)
                 }
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(5)
              }
                 .padding()
                 .frame(width: 200)
           }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Content: View {
    var body: some View{
        HStack(){
            Text("abcsjkhaj")
            Text("abc")
            Text("xyz")
            Image(systemName: "lock")


        }
    }
    
}
