//
//  Product+CoreDataProperties.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 25.04.2021.
//
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var tittle: String?
    @NSManaged public var price_of_one: Double
    @NSManaged public var price_total: Double
    @NSManaged public var count: Int16
    @NSManaged public var comment: String?
    @NSManaged public var receipt: Receipt?
    @NSManaged public var category: Category?

}

extension Product : Identifiable {

}
