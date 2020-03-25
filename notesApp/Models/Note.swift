//
//  Note.swift
//  notesApp
//
//  Created by оля on 24.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//


import SwiftUI
import Combine

struct Note: Identifiable{
    var id: ObjectIdentifier
    
    var title:String? = ""
    var text:String? = ""
    var isFavorite: Bool? = false
    var type:String? = ""
    var date: Date?
    
//    // status: "normal", "deleted", "favorite"
//    var status: String = ""
    
}
