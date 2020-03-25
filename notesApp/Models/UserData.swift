//
//  UserData.swift
//  notesApp
//
//  Created by оля on 24.03.2020.
//  Copyright © 2020 Olya. All rights reserved.
//


import SwiftUI
import Combine

final class UserData: ObservableObject  {
    @Published var username = ""
    @Published var password = ""
}
