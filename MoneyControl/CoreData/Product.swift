//
//  Product.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 25.04.2021.
//

import Foundation
import CoreData

public class Product: NSManagedObject, Identifiable {
    @NSManaged public var title: String
    @NSManaged public var count: Int
    @NSManaged public var priceOfOne: Double
    @NSManaged public var totalPrice: Double
    @NSManaged public var comment: String
}
