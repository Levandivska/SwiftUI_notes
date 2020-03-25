//
//  MainView.swift
//  notesApp
//
//  Created by оля on 24.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI


class NotesList: ObservableObject {
    @Published var lst: [Note] = []
}


struct MainView: View {
    @EnvironmentObject var notesList: NotesList
    
    private var notesData: [Note] = [
        Note(id: ObjectIdentifier(Int.self), title: "title1", text: "text1", isFavorite: true, type: "type", date: Date()),
        Note(id: ObjectIdentifier(Int.self), title: "title2", text: "text2", isFavorite: false, type: "type", date: Date()),
        Note(id: ObjectIdentifier(Int.self), title: "title3", text: "text3", isFavorite: false, type: "type", date: Date()),
    ]
    
    private var DeletedNotesData: [Note] = []
    
    @State var IsCreateNoteViewPresented = false
    @State var ProfileViewPresented = false
    
    var body: some View {

        NavigationView {
            TabView {
                MyNotesView(notesData: notesData)
                    .tabItem {
                        Image(systemName: "house")
                        Text("My notes")
                }
                
                DeletedNotesView()
                    .tabItem {
                        Image(systemName: "heart")
                        Text("Favorites")
                }
                
                FavoritesNotesView()
                    .tabItem {
                        Image(systemName: "trash")
                        Text("Trash")
                }
            }
            .navigationBarItems(trailing:
                HStack(spacing: 100){ // Fix
                    Button(action: {
                        self.ProfileViewPresented = true
                        }){
                            Image(systemName: "person")
                        }.sheet(isPresented: $ProfileViewPresented, content:{ ProfileView() })
                    Spacer()
                    Button(action: {
                        self.IsCreateNoteViewPresented = true
                    }){
                        Text("Create new note")
                    }.sheet(isPresented: $IsCreateNoteViewPresented, content:{ CreateNoteView() })
                    })
                    .font(.headline)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(NotesList())
    }
}
