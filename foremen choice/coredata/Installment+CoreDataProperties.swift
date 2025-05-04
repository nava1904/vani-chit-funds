//
//  Installment+CoreDataProperties.swift
//  foremen choice
//
//  Created by navadeep reddy on 03/05/25.
//
//

import Foundation
import CoreData


extension Installment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Installment> {
        return NSFetchRequest<Installment>(entityName: "Installment")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var monthnumber: Int16
    @NSManaged public var duedate: Date?
    @NSManaged public var payments: NSSet?
    @NSManaged public var chitgroup: Chitgroup?

}

// MARK: Generated accessors for payments
extension Installment {

    @objc(addPaymentsObject:)
    @NSManaged public func addToPayments(_ value: Installmentpayment)

    @objc(removePaymentsObject:)
    @NSManaged public func removeFromPayments(_ value: Installmentpayment)

    @objc(addPayments:)
    @NSManaged public func addToPayments(_ values: NSSet)

    @objc(removePayments:)
    @NSManaged public func removeFromPayments(_ values: NSSet)

}

extension Installment : Identifiable {

}
