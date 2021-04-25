//
//  Receipt.swift
//  MoneyControl
//
//  Created by Кристина Семкова on 25.04.2021.
//

import Foundation
import CoreData

public class Receipt: NSManagedObject, Identifiable {
    @NSManaged public var title: String
    @NSManaged public var date: Date

}
