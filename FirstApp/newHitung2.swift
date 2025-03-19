import SwiftUI

struct newHitung2: View {
    var body: some View {
        VStack {
            Spacer() // Pushes everything up
            
            VStack(alignment: .leading, spacing: 25) {
                // Title
                VStack {
                    Text("Masukkan Data")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                        .foregroundStyle(Color("newcolor"))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                
                // Input Fields
                Label {
                    Text("Harga Rumah").font(.title2)
                } icon: {
                    Image(systemName: "house")
                }
                TextField("", text: .constant("2.000.000"))
                    .padding([.top, .leading, .bottom])
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                   
                
                Label {
                    Text("Tenor").font(.title2)
                } icon: {
                    Image(systemName: "calendar.badge.clock")
                }
                TextField("", text: .constant("2.000.000"))
                    .padding([.top, .leading, .bottom])
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                
                Label {
                    Text("Suku Bunga").font(.title2)
                } icon: {
                    Image(systemName: "percent")
                }
                
                Picker("Select Interest", selection: .constant("Suku Bunga")) {
                    Text("Suku Bunga").tag("Suku Bunga")
                    Text("2.5%").tag("2.5%")
                    Text("3.0%").tag("3.0%")
                    Text("4.5%").tag("4.5%")
                    Text("5.0%").tag("5.0%")
                }
                .padding([.top, .leading, .bottom])
                .frame(maxWidth: .infinity)
                .font(.body)
                .pickerStyle(.menu)
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                .foregroundStyle(Color("newcolor"))
                .tint(.primary)
                
                VStack (spacing: 1){
                    HStack {
                        Spacer()
                        Button("Clear") { }
                    }
                    
                    // Hitung Button
                    Button {
                        // Calculate action
                    } label: {
                        Text("Hitung")
                            .foregroundStyle(Color(.white))
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            .background(Color("newcolor"))
                            .fontWeight(.bold)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .padding()
                }
                
                
                
            }
            .padding()
            .background(Color("TintedGreen"))
            .clipShape(RoundedRectangle(cornerRadius: 50))
            
            
            //Spacer() // Ensures green extends fully
        }
        .frame(maxHeight: .infinity)
        //.background(Color("TintedGreen")) // Extends green background
        .ignoresSafeArea(.all)
    }
}

#Preview {
    newHitung2()
}
