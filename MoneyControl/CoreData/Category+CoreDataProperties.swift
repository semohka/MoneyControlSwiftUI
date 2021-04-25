//
//  Category+CoreDataProperties.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 25.04.2021.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var title: String?

}

extension Category : Identifiable {

}
