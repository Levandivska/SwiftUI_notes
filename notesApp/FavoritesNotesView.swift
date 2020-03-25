//
//  FavoritesNotesView.swift
//  notesApp
//
//  Created by оля on 25.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI

struct FavoritesNotesView: View {
    private var favoritesNotesData: [Note] = []
    
    var body: some View {
        NavigationView{
            List{
                ForEach(favoritesNotesData){ dataitem in
                    NavigationLink(destination: NoteView()) {
                        AddNewNoteView(note: dataitem)
                    }
                    
                }
      
            }.navigationBarTitle(Text("Favorites"))
        }
    }
    
    
}

struct FavoritesNotesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesNotesView()
    }
}
