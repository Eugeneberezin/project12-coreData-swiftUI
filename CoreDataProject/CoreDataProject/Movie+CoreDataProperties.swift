//
//  Movie+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Eugene Berezin on 5/19/20.
//  Copyright © 2020 Eugene Berezin. All rights reserved.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var director: String?
    @NSManaged public var title: String?
    @NSManaged public var year: Int16

}
