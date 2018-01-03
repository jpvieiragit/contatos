//
//  CoreDataManager.swift
//  IntermediateTraining
//
//  Created by _joelvieira on 27/11/2017.
//  Copyright © 2017 _joelvieira. All rights reserved.
//

import CoreData

struct CoreDataManager {
    
    static let shared = CoreDataManager() // viverá para sempre enquanto seu aplicativo ainda estiver vivo, suas propriedades também
    
    let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "IntermediateTrainingModels")
        container.loadPersistentStores(completionHandler: { (storeDescription, err) in
            if let err = err {
                fatalError("Loading of store failed: \(err)")
            }
        })
        return container
    }()
    
    
}
