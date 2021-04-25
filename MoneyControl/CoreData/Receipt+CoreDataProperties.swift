//
//  Receipt+CoreDataProperties.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 25.04.2021.
//
//

import Foundation
import CoreData


extension Receipt {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Receipt> {
        return NSFetchRequest<Receipt>(entityName: "Receipt")
    }

    @NSManaged public var tittle: String?
    @NSManaged public var date: Date?
    @NSManaged public var shop: Shop?

}

extension Receipt : Identifiable {

}
