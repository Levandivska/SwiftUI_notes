//
//  Profile.swift
//  notesApp
//
//  Created by оля on 25.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI

struct ProfileView: View {

    @State private var selectedDate = Date()
    @State var name: String = ""
    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var showImagePicker: Bool = false
    @State var image: Image? = nil
    @State var showDefaultImage = true
    @State var downloadPhotoStr = "download"
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Photo")){
                    HStack {
                         
                         image?.resizable()
                                 .frame(width: 100, height: 100)
                                 .cornerRadius(10)
                         
                         Button(action: {
                             self.showImagePicker.toggle()
                         }){
                             Text(downloadPhotoStr)
                         }.sheet(isPresented: $showDefaultImage) {
                                 Image(systemName: "trash")
                         }
                         
                     }
                     .sheet(isPresented: $showImagePicker) {
                         ImagePicker(sourceType: .photoLibrary) { image in
                             self.image = Image(uiImage: image)
                             self.downloadPhotoStr = "edit"
                         }
                     }
                }

                Section(header: Text("Name")){
                    HStack {
                        Text("firstname")
                        Spacer()
                        TextField(firstname, text: $firstname)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack {
                        Text("lastname")
                        Spacer()
                        TextField(lastname, text: $lastname)
                            .multilineTextAlignment(.trailing)
                    }
                }

                Section(header: Text("Other")){
                    DatePicker(selection: $selectedDate, displayedComponents: .date) {Text("birthday")}
                      
                    HStack {
                        Text("email")
                        Spacer()
                        TextField(name, text: $name)
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            } .navigationBarTitle("User info")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
