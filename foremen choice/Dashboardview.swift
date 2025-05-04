import SwiftUI
import CoreData // Import CoreData as the app relies on it

struct DashboardView: View {
    // Access the managed object context from the environment.
    // Even if the Dashboard itself doesn't use it directly,
    // views it navigates to might, so it's good practice to pass it down.
    @Environment(\.managedObjectContext) var managedObjectContext

    var body: some View {
        // NavigationView manages the navigation stack and displays the title
        // Use NavigationStack for newer iOS versions (iOS 16+), NavigationView for broader compatibility
        NavigationView {
            VStack(spacing: 20) { // Arrange content vertically with spacing
                // Optional: A welcome message or main title
                Text("Foreman Dashboard")
                    .font(.largeTitle) // Make it prominent
                    .padding(.bottom, 20) // Add space below

                // --- Navigation Links to Main Sections ---
                // Use NavigationLink to create tappable areas that navigate to other views

                // Link to the Chit Groups List
                NavigationLink {
                    ChitGroupListView() // The destination view we started creating
                } label: {
                    // Use a custom helper view for consistent button styling
                    DashboardButtonLabel(title: "Manage Chit Groups", iconName: "folder.fill")
                }

                // Link to the Subscribers List (Placeholder for now)
                NavigationLink {
                    // This will navigate to a simple Text view initially
                    Text("Subscribers List View - Coming Soon")
                    // TODO: Replace with SubscriberListView() when created
                } label: {
                    DashboardButtonLabel(title: "Manage Subscribers", iconName: "person.3.fill")
                }

                // Link to the Record Payments section (Placeholder for now)
                 NavigationLink {
                     Text("Record Payments View - Coming Soon")
                     // TODO: Replace with RecordPaymentsView() when created
                 } label: {
                     DashboardButtonLabel(title: "Record Payments", iconName: "creditcard.fill")
                 }

                // Link to the View Dues & Status section (Placeholder for now)
                 NavigationLink {
                     Text("View Dues & Status View - Coming Soon")
                     // TODO: Replace with DuesStatusView() when created
                 } label: {
                     DashboardButtonLabel(title: "View Dues & Status", iconName: "list.bullet.clipboard.fill")
                 }

                 // Link to the Settings section (Placeholder for now)
                 NavigationLink {
                     Text("Settings View - Coming Soon")
                     // TODO: Replace with SettingsView() when created
                 } label: {
                     DashboardButtonLabel(title: "Settings", iconName: "gearshape.fill")
                 }

                Spacer() // Pushes all content towards the top of the screen
            }
            // Apply the navigation title to the NavigationView content
            .navigationTitle("Chit Manager")
        }
    }
}

// MARK: - Helper View for Button Style

// This struct creates a consistent look for the dashboard buttons
struct DashboardButtonLabel: View {
    let title: String // Text to display on the button
    let iconName: String // System image name for the icon

    var body: some View {
        HStack {
            // Display the icon
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30) // Set icon size
                .foregroundColor(.blue) // Set icon color (you can change this)

            // Display the title text
            Text(title)
                .font(.title2) // Set text font size
                .fontWeight(.medium) // Make text slightly bolder
                .foregroundColor(.primary) // Use primary color for text

            Spacer() // Pushes the icon and text to the left, leaving space on the right
        }
        .padding() // Add padding inside the button area
        // Use .background() with a color or shape to define the button's visual area
        .background(Color(UIColor.systemGray6)) // A light gray background standard in iOS
        .cornerRadius(12) // Rounded corners for the button background
        .padding(.horizontal) // Add padding on the sides of the button to the screen edges
    }
}


// MARK: - Preview Provider

// This allows you to see a preview of this view in the Xcode canvas
#Preview {
    DashboardView()
        // Inject the Core Data managed object context into the preview environment
        // This is necessary because DashboardView or views it navigates to will use it
        .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

