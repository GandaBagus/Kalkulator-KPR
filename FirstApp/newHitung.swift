//
//  newHitung.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 19/03/25.
//
import SwiftUI

struct newHitung: View {
    var body: some View {
        VStack{
            VStack{
                
                Text("Masukkan Data")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundStyle(Color("newcolor"))
                
            }
            .padding()
            .frame(maxHeight: 200)
            //Color("TintedGreen")
            
            VStack (alignment: .leading, spacing: 20){
                Label {
                    Text("Harga Rumah").font(.headline)
                } icon: {
                    Image(systemName: "house")
                }
                TextField("", text: .constant("2.000.000"))/*.textFieldStyle(.roundedBorder)*/
                    .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                Label {
                    Text("Tenor").font(.headline)
                } icon: {
                    Image(systemName: "calendar.badge.clock")
                }
                
                TextField("", text: .constant("2.000.000"))/*.textFieldStyle(.roundedBorder)*/
                    .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                
                Label {
                    Text("Suku Bunga").font(.headline)
                } icon: {
                    Image(systemName: "percent")
                }
                
                Picker("Select Gender", selection: .constant("Suku Bunga")) {
                    Text("Suku Bunga").tag("Suku Bunga")
                    Text("2.5%").tag("2.5%")
                    Text("3.0%").tag("3.0%")
                    Text("4.5%").tag("4.5%")
                    Text("5.0%").tag("5.0%")
                }
                .frame(maxWidth: .infinity)
                .font(.body)
                .pickerStyle(.menu)
                .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                .foregroundStyle(Color("newcolor"))
                .tint(.primary)
                
                HStack{
                    Spacer()
                    Button("Clear"){
                        
                    }
                }
                
                
                
            }
            .padding()
            .background(Color("TintedGreen"))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            
            //Divider()
            
        }
        .padding(.horizontal)
        
        
        Button {
            // Put what to calculate
        } label: {
            Text("Hitung")
                .foregroundStyle(Color(.white))
                .padding(.vertical, 20)
                .frame(maxWidth: .infinity)
                .background(Color("newcolor"))
                .fontWeight(.bold)
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding()
        
        Spacer()
    }
}


#Preview {
    newHitung()
}
