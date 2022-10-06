//
//  DataController.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import CoreData
import Foundation

class DataContoller: ObservableObject{
    let container = NSPersistentContainer(name: "MicroCredit")
    
    init(){
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
            
        }
    }
}

