//
//  Profile.swift
//  notesApp
//
//  Created by оля on 25.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI


struct ProfileView: View {
    
    var body: some View {
        VStack{
            Text("Full name")
            Text("photo")
            Text("email")
            Text("birthday")
            Text("All notes")
            Text("Deletes notes")
            Text("Faborites notes")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
