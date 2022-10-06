//
//  DecMicFinApp.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

@main
struct DecMicFinApp: App {
    @StateObject private var dataController = DataContoller()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
