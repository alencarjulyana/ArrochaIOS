//
//  TheRockApp.swift
//  TheRock
//
//  Created by ifpb on 02/06/23.
//

import SwiftUI

@main
struct TheRockApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(theRockVM: TheRockViewModel())
        }
    }
}
