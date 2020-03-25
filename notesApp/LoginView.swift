//
//  LoginView.swift
//  notesApp
//
//  Created by оля on 24.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI


struct StartView: View {
//    @EnvironmentObject var userData: UserData

    @State var username: String = ""
    @State var password: String = ""

    var body: some View {
        NavigationView{
            VStack {
                Text("Notes App")
                     TextField("username", text: $username)
                     TextField("password", text: $password)
            }.padding()
            Spacer()
            NavigationLink(destination: MainView()) {
                 MyView()
            }.foregroundColor(.blue)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
