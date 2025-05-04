
import Foundation
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    // Preview/Test configuration with in-memory data
    static var preview: PersistenceController = {
        let controller = PersistenceController(inMemory: true)
        let viewContext = controller.container.viewContext

        // Sample Subscribers for previews/testing
        /*for i in 0..<5 {
            let newSubscriber = Subscriber(context: viewContext)
            newSubscriber.name = "Subscriber \(i)"
            newSubscriber.phonenumber = "123456789\(i)"
        }

        do {
            try viewContext.save()
        } catch {
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
*/
        return controller
    }()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "foremen_choice") // must match your .xcdatamodeld filename

        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }

        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }

        container.viewContext.automaticallyMergesChangesFromParent = true
    }
}
