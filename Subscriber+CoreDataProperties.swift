//
//  Subscriber+CoreDataProperties.swift
//  foremen choice
//
//  Created by navadeep reddy on 03/05/25.
//
//

import Foundation
import CoreData


extension Subscriber {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Subscriber> {
        return NSFetchRequest<Subscriber>(entityName: "Subscriber")
    }

    @NSManaged public var adress: String?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var phonenumber: String?
    @NSManaged public var chitnumber: Int16
    @NSManaged public var chitgroup: Chitgroup?
    @NSManaged public var payments: NSSet?

}

// MARK: Generated accessors for payments
extension Subscriber {

    @objc(addPaymentsObject:)
    @NSManaged public func addToPayments(_ value: Installmentpayment)

    @objc(removePaymentsObject:)
    @NSManaged public func removeFromPayments(_ value: Installmentpayment)

    @objc(addPayments:)
    @NSManaged public func addToPayments(_ values: NSSet)

    @objc(removePayments:)
    @NSManaged public func removeFromPayments(_ values: NSSet)

}

extension Subscriber : Identifiable {

}
