//
//  Installmentpayment+CoreDataProperties.swift
//  foremen choice
//
//  Created by navadeep reddy on 03/05/25.
//
//

import Foundation
import CoreData


extension Installmentpayment {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Installmentpayment> {
        return NSFetchRequest<Installmentpayment>(entityName: "Installmentpayment")
    }

    @NSManaged public var note: String?
    @NSManaged public var paymentdate: Date?
    @NSManaged public var amountpaid: Double
    @NSManaged public var id: UUID?
    @NSManaged public var installment: Installment?
    @NSManaged public var subscriber: Subscriber?

}

extension Installmentpayment : Identifiable {

}
