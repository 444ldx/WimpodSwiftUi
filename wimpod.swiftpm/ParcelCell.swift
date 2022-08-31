import SwiftUI

struct ParcelCell: View {
    
    @State var parcelNumber: String
    @State var duration: String
    
    var body: some View {
        HStack {
            Image("Box")
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
            VStack(alignment: .leading) {
                Text(parcelNumber)
                Text("Arrivée prévu dans \(duration) jours")
                    .opacity(0.5)
            }
            .padding()
            Spacer()
        }
        .background()
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.25), radius: 10, x: 0, y: 4)
        .padding(.horizontal, 25)
        .padding(.vertical, 10)
    }
    
}

struct ParcelCell_Preview: PreviewProvider {
    static var previews: some View {
        ParcelCell(parcelNumber: "13UUCOZ86GDLBC9", duration: "2")
            .padding()
            .background(Color("Background2"))
            .previewLayout(.sizeThatFits)
    }
}
