//
//  CreateNoteView.swift
//  notesApp
//
//  Created by оля on 25.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI



struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}

struct CreateNoteView: View {
        @EnvironmentObject var notesList: NotesList
    //    @State private var currNote: Note = Note()
        @State private var title: String = ""
        @State private var text: String = ""
        
        var body: some View {
            VStack{
                Text("Create New Note")
                TextField("title", text: $title)
                    .font(.largeTitle)
                
                TextField("text", text: $text)
                .frame(height: 200)
                Spacer()
                Button(action:{
    //                let currNote = Note(id: ObjectIdentifier(Int.self), title: self.title, text: self.text, IsFavorite: false, type: "type", date: Date())
                    
                    //print(self.notesList.lst)
    //              self.notesList.lst += [currNote]
    //                print(currNote)
                    print("hello")
                })
                {
                    Text("Save")
                }
            }.padding()
        }
}

//struct CreateNoteView_Previews: PreviewProvider {
//    static var previews: some View {
//       CreateNoteView().environmentObject(NotesList())
//    }
//}



