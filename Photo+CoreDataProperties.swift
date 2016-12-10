//
//  Photo+CoreDataProperties.swift
//  Virtual Tourist
//
//  Created by Phillip Crawford on 12/9/16.
//  Copyright © 2016 Phillip Crawford. All rights reserved.
//

import Foundation
import CoreData
 

extension Photo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Photo> {
        return NSFetchRequest<Photo>(entityName: "Photo");
    }

    @NSManaged public var url: String?
    @NSManaged public var image: NSData?
    @NSManaged public var pin: Pin?

}
