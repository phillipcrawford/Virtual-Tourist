//
//  Photo+CoreDataClass.swift
//  Virtual Tourist
//
//  Created by Phillip Crawford on 12/9/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import UIKit
import Foundation
import CoreData


public class Photo: NSManagedObject {

    // MARK: Initializer
    convenience init(image: NSData, pin: Pin, context: NSManagedObjectContext){
        
        // An EntityDescription is an object that has access to all
        // the information you provided in the Entity part of the model
        // you need it to create an instance of this class.
        if let ent = NSEntityDescription.entity(forEntityName: "Photo", in: context) {
            self.init(entity: ent, insertInto: context)
            self.image = image
            self.pin = pin
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    
    convenience init(url: String, pin: Pin, context: NSManagedObjectContext) {
        if let ent = NSEntityDescription.entity(forEntityName: "Photo", in: context) {
            self.init(entity: ent, insertInto: context)
            self.url = url
            self.pin = pin
        } else {
            fatalError("Unable to find Entity name!")
        }
    }
    // MARK: Computed Property
    
    var humanReadableImage: AnyObject? {
        get {
            let swiftImage : UIImage = UIImage(data: image as! Data)!
            return swiftImage
        }
    }
    
}
