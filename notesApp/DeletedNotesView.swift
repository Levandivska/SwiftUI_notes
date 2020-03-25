//
//  DeletedNotesView.swift
//  notesApp
//
//  Created by оля on 25.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//

import SwiftUI

struct DeletedNotesView: View {
    private var deletedNotesData: [Note] = []
    
    var body: some View {
        NavigationView{
            List{
                ForEach(deletedNotesData){ dataitem in
                    NavigationLink(destination: NoteView()) {
                        AddNewNoteView(note: dataitem)
                    }
                    
                }
      
            }.navigationBarTitle(Text("Deleted"))
        }
    }
    
    
}

struct DeletedNotesView_Previews: PreviewProvider {
    static var previews: some View {
        DeletedNotesView()
    }
}
