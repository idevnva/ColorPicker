//  ColorsPickerView.swift

import SwiftUI

struct ColorsPickerView: View {
    @Binding var selectedColor: Color
    private let colors: [Color] =
    [
        .red, .blue, .cyan, .brown, .yellow, .green, .gray, .indigo, .mint, .orange, .pink, .purple, .teal, .black, .secondary
    ]
    
    private let adaptive =
    [
        GridItem(.adaptive(minimum: 70))
    ]
    
    var body: some View {
        LazyVGrid(columns: adaptive) {
            ForEach(colors, id: \.self) { color in
                Circle()
                    .foregroundColor(color)
                    .opacity(color == selectedColor ? 1.0 : 0.5)
                    .scaleEffect(color == selectedColor ? 1.1 : 1.0)
                    .onTapGesture {
                        selectedColor = color
                    }
            } .padding(10)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.thinMaterial)
        .cornerRadius(25)
    }
}

struct ColorsPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsPickerView(selectedColor: .constant(.red))
    }
}
