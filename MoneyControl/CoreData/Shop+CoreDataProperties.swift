//
//  Shop+CoreDataProperties.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 25.04.2021.
//
//

import Foundation
import CoreData


extension Shop {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Shop> {
        return NSFetchRequest<Shop>(entityName: "Shop")
    }

    @NSManaged public var tittle: String?

}

extension Shop : Identifiable {

}
