//  ContentView.swift

import SwiftUI

struct ContentView: View {
    @State private var selectedColor: Color = .red
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Circle()
                        .foregroundColor(selectedColor)
                    
                    Text("\(selectedColor.description)")
                        .font(.title).textCase(.uppercase)
                } .padding()
                ColorsPickerView(selectedColor: $selectedColor)
            }
            .padding()
            .navigationTitle("ColorPicker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
