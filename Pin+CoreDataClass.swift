//
//  Pin+CoreDataClass.swift
//  Virtual Tourist
//
//  Created by Phillip Crawford on 12/9/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import Foundation
import CoreData


public class Pin: NSManagedObject {

    // MARK: Initializer
    convenience init(latitude: Double = 0.0, longitude: Double = 0.0, context: NSManagedObjectContext) {
        
        // An EntityDescription is an object that has access to all
        // the information you provided in the Entity part of the model
        // you need it to create an instance of this class.
        if let ent = NSEntityDescription.entity(forEntityName: "Pin", in: context) {
            self.init(entity: ent, insertInto: context)
            self.latitude = latitude
            self.longitude = longitude
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
}
