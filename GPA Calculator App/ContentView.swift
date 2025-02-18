import SwiftUI


struct ContentView: View {
    
    @State private var totalPoints: Double = 0
    @State private var totalClasses: Double = 0
    @State private var gpa: Double = 0.0
    @State private var colorFont: Color = .black
    var body: some View {
        var gpa: Double {
                if totalClasses > 0 {
                    return totalPoints / totalClasses
                } else {
                    return 0.0
                }
            }
        var colorFont: Color {
            if gpa >= 4.0 {
                return .green
            } else if gpa >= 3.0 {
                return .yellow
            } else if gpa < 0.0 {
                return .red
            } else {
                return .black
            }
        }
        VStack(spacing:25) {
            Text("GPA Calculator")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(colorFont)
            Text("Class Grades:")
                .font(.headline)
            
            HStack{
                Button("A") {
                    totalPoints += 4
                    totalClasses += 1
                }
                Button("B") {
                    totalPoints += 3
                    totalClasses += 1
                }
                Button("C") {
                    totalPoints += 2
                    totalClasses += 1
                }
                Button("D") {
                    totalPoints += 1
                    totalClasses += 1
                }
                Button("F") {
                    totalPoints += 0
                    totalClasses += 1
                }
            }
            .buttonStyle(.borderedProminent)
            HStack{
                Button("Honors") {
                    totalPoints += 0.5
                }
                Button("AP") {
                    totalPoints += 1
                }
            }

            .buttonStyle(.borderedProminent)
            HStack{
                Text("GPA: \(String(format: "%.2f", gpa))")
                Text("Total Classes: \(Int(totalClasses))")
            }
            
            
        }
        
        .padding()
    }
    
}

#Preview {
    ContentView()
}
