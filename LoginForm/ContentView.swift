//
//  ContentView.swift
//  LoginForm
//
//  Created by Pavlin Dimitrov on 30.10.22.
//

import SwiftUI

struct ContentView: View {
    @State var username = ""
    @State var password = ""
    @State var backgroundColor: Color = .white
    
    var body: some View {
            VStack (alignment: .center, spacing: 10){
                Spacer()
                Text("Login Form").foregroundColor(.black).font(Font.title)
                Image(systemName: "globe").foregroundColor(.black).imageScale(.large)
                
                HStack(alignment: .center, spacing: 10){
                    Text("Username").foregroundColor(.black).font(Font.system(size: 20))
                    TextField("username", text: $username, prompt: Text("Enter username:"))
                }
                
                HStack(alignment: .center, spacing: 10){
                    Text("Password").foregroundColor(.black).font(Font.system(size: 20))
                    SecureField("password", text: $password, prompt: Text("Enter passord:")).disableAutocorrection(true)
                }
                
                Button("Login") {
                    if username=="test" && password == "test" {
                        backgroundColor = Color.green
                    }
                    else{
                        backgroundColor = Color.red
                    }
                }.buttonStyle(.bordered).tint(.black)
                Spacer()
            }
            .padding()
            .background(backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
