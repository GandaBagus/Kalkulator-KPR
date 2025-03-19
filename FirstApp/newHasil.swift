//
//  newHitung.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 19/03/25.
//
import SwiftUI

struct newHasil: View {
    var body: some View {
        VStack{
            VStack{
                
                Text("Hasil Perhitungan")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                    .foregroundStyle(Color("newcolor"))

            }
            .padding()
            .frame(maxHeight: 200)
            //Color("TintedGreen")
            
            VStack (alignment: .leading, spacing: 20){
                Label {
                    Text("Cicilan Pokok").font(.headline)
                } icon: {
                    Image(systemName: "house")
                }
                TextField("", text: .constant("2.000.000"))/*.textFieldStyle(.roundedBorder)*/
                    .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                Label {
                    Text("Cicilan Bunga").font(.headline)
                } icon: {
                    Image(systemName: "calendar.badge.clock")
                }
                
                TextField("", text: .constant("2.000.000"))/*.textFieldStyle(.roundedBorder)*/
                    .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                
                Label {
                    Text("Cicilan Total").font(.headline)
                } icon: {
                    Image(systemName: "percent")
                }
                
                TextField("", text: .constant("4.000.000"))/*.textFieldStyle(.roundedBorder)*/
                    .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))

                HStack{
                    Spacer()
//                    Button("Clear"){
//                        
//                    }
                }
                
                
                
            }
            .padding()
            .background(Color("TintedGreen"))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            
            //Divider()
            
        }
        .padding(.horizontal)
        
        VStack (spacing: -20){
            Button {
                // Put what to calculate
            } label: {
                Text("Tambah Perhitungan")
                    .foregroundStyle(Color(.white))
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                    .background(Color("newcolor"))
                    .fontWeight(.bold)

            }
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .padding()
            
            Button {
                // Put what to calculate
            } label: {
                Text("Kembali ke Halaman Utama")
                    .foregroundStyle(Color(.black))
                    .padding(.vertical, 20)
                    .frame(maxWidth: .infinity)
                   
                    .fontWeight(.bold)

            }
            .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
            .padding()
        }
        
        Spacer()
    }
}


#Preview {
    newHasil()
}
