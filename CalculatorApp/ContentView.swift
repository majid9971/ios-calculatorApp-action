import SwiftUI

struct ContentView: View {
    @State private var input: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text(input)
                .font(.largeTitle)
                .padding()

            HStack {
                Button("1") { input += "1" }
                Button("2") { input += "2" }
                Button("3") { input += "3" }
            }

            HStack {
                Button("+") { input += "+" }
                Button("=") {
                    let expression = NSExpression(format: input)
                    if let result = expression.expressionValue(with: nil, context: nil) as? NSNumber {
                        input = result.stringValue
                    } else {
                        input = "Error"
                    }
                }
                Button("C") { input = "" }
            }
        }
        .padding()
        .buttonStyle(.bordered)
    }
}
