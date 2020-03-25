//
//  MyNotesView.swift
//  notesApp
//
//  Created by оля on 25.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI

struct MyNotesView: View {
    var notesData: [Note]
    
    @State var IsCreateNoteViewPresented = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(notesData){ dataitem in
                    NavigationLink(destination: NoteView()) {
                        AddNewNoteView(note: dataitem)
                    }
                    
                }
      
            }.navigationBarTitle(Text("Notes"))
        }
        
        //            .navigationBarItems(trailing:
        //                HStack(spacing: 30){
        //                    Button(action: {
        //                        self.IsCreateNoteViewPresented = true
        //                    }){
        //                        Text("Create new note")
        //                    }.sheet(isPresented: $IsCreateNoteViewPresented, content:{ NoteView() })
        //                    })
        //                    .font(.headline)
    }
    
}


var exnotesData = [
    Note(id: ObjectIdentifier(Int.self), title: "title1", text: "text1", isFavorite: true, type: "type", date: Date()),
    Note(id: ObjectIdentifier(Int.self), title: "title2", text: "text2", isFavorite: false, type: "type", date: Date()),
    Note(id: ObjectIdentifier(Int.self), title: "title3", text: "text3", isFavorite: false, type: "type", date: Date()),
]

struct MyNotesView_Previews: PreviewProvider {
    static var previews: some View {
        MyNotesView(notesData: exnotesData)
    }
}
