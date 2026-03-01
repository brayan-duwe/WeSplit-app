import SwiftUI

struct ContentView: View {
    var students = ["Harry", "Ron", "Hermione"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select a student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            } .navigationTitle("Select a Student")
        }
    }
}

#Preview {
    ContentView()
}
