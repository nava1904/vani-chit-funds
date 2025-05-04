//
//  Chitgroup+CoreDataProperties.swift
//  foremen choice
//
//  Created by navadeep reddy on 03/05/25.
//
//

import Foundation
import CoreData


extension Chitgroup {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Chitgroup> {
        return NSFetchRequest<Chitgroup>(entityName: "Chitgroup")
    }

    @NSManaged public var chitvalue: Double
    @NSManaged public var commissionpercentage: Double
    @NSManaged public var duration: Int16
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var startdate: Date?
    @NSManaged public var subscribercount: Int16
    @NSManaged public var subscribers: NSSet?
    @NSManaged public var installments: NSSet?

}

// MARK: Generated accessors for subscribers
extension Chitgroup {

    @objc(addSubscribersObject:)
    @NSManaged public func addToSubscribers(_ value: Subscriber)

    @objc(removeSubscribersObject:)
    @NSManaged public func removeFromSubscribers(_ value: Subscriber)

    @objc(addSubscribers:)
    @NSManaged public func addToSubscribers(_ values: NSSet)

    @objc(removeSubscribers:)
    @NSManaged public func removeFromSubscribers(_ values: NSSet)

}

// MARK: Generated accessors for installments
extension Chitgroup {

    @objc(addInstallmentsObject:)
    @NSManaged public func addToInstallments(_ value: Installment)

    @objc(removeInstallmentsObject:)
    @NSManaged public func removeFromInstallments(_ value: Installment)

    @objc(addInstallments:)
    @NSManaged public func addToInstallments(_ values: NSSet)

    @objc(removeInstallments:)
    @NSManaged public func removeFromInstallments(_ values: NSSet)

}

extension Chitgroup : Identifiable {

}
