//
//  AddNewNoteView.swift
//  notesApp
//
//  Created by оля on 25.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI

struct NotFavorite: View {
    var body: some View {
        Image(systemName: "heart")
    }
}

struct IsFavorite: View {
    var body: some View {
        Image(systemName: "heart.fill")
        .foregroundColor(.red)
    }
}

struct AddNewNoteView: View {
    var note: Note
    
    var body: some View {
        HStack{
            VStack{
                Text(note.title!)
                    .font(.title)
                Text(note.text!)
            }
    
            Spacer()
            IsFavorite()

            VStack{
                Text(note.type!)
                Text(DateFormatter().string(from: note.date!))
                
            }
        }.padding()
    }
}

var note1 = Note(id: ObjectIdentifier(Int.self), title: "title1", text: "text1", isFavorite: true, type: "type", date: Date())

struct AddNewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewNoteView(note: note1)
//        AddNewNoteView(data: Note2)

    }
}
