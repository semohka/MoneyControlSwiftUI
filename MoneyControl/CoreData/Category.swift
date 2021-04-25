//
//  Category.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 25.04.2021.
//

import Foundation
import CoreData

public class Category: NSManagedObject, Identifiable {
    @NSManaged public var title: String
}
