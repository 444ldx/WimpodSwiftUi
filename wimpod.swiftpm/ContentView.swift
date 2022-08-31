import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Wimpod")
                    .foregroundColor(Color("Text"))
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                Text("Votre suivis de colis made in France 🇫🇷 qui respecte votre vie privé")
                    .foregroundColor(Color("Text"))
                    .font(.title)
                    .fontWeight(.semibold)
                    .frame(minHeight: 135)
                    .padding()
                VStack(alignment: .center, spacing: -10) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color("Text"))
                            .opacity(0.5)
                        Text("Numero de colis...")
                            .foregroundColor(Color("Text"))
                            .opacity(0.5)
                    }
                    .padding()
                    Button {
                        // code
                    } label: {
                        Text("Rechercher")
                            .fontWeight(.medium)
                            .foregroundColor(Color("Background"))
                            .frame(minWidth: 250, minHeight: 50)
                            .background(Color("Button"))
                            .cornerRadius(.infinity)
                            .padding()
                    }
                }
                .background(Color("Card"))
                .cornerRadius(20)
                .padding(.top, 0)
                .padding(.bottom, 40)
            }
            .background(Color("Background"))
            VStack {
                HStack {
                    Text("Vos suivis")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("Background"))
                        .padding(.top, 30)
                        .padding(.leading, 25)
                    Spacer()
                }
                ScrollView {
                    ParcelCell(parcelNumber: "FRZ24KKFKGR02345", duration: "5")
                    ParcelCell(parcelNumber: "DEOZ3884HKHY747H", duration: "2")
                    ParcelCell(parcelNumber: "ANIFMSI843I8830J", duration: "1")
                    ParcelCell(parcelNumber: "FRR83938N9N38S77", duration: "6")
                    ParcelCell(parcelNumber: "LDX444JNNDI838HO", duration: "7")
                }
            }
            .background(Color("Background2"))
            .cornerRadius(25)
        }
        .background(Color("Background"))
        .padding(.bottom, -35)
    }
}
