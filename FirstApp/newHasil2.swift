//
//  newHitung.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 19/03/25.
//
import SwiftUI

struct newHasil2: View {
    var body: some View {
        ZStack {
            VStack {
                Color("ShadedGreen")
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(height: 250)
                    .ignoresSafeArea()
                Spacer()
            }
            
            VStack {
                Spacer() // Pushes content to center
                
                ZStack{
                    VStack(spacing: 20){
                        Text("Total Pembayaran").font(.largeTitle).bold()
                        VStack{
                            Text("Rp.3.250.000").font(.title).padding(.vertical, 100.0)
                        }
                        .padding(.horizontal, 80.0)
                        
                        .background(Color("TintedGreen"))
                        
                        .frame(height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                        HStack{
                            VStack{
                                Text("Cicilan Pokok").font(.headline).frame(width: 116.0, height: 20.0)
                                Text("Rp.2.000.000")
                                    .frame(width: 116.0, height: 20.0)
                            }
                            .padding(.all, 40.0)
                            .background(Color("TintedGreen"))
                            
                            .frame(width: 160, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            VStack{
                                Text("Cicilan Bunga").font(.headline).frame(width: 116.0, height: 20.0)
                                Text("Rp.1.250.000")
                                    .frame(width: 116.0, height: 20.0)
                            }
                            .padding(.all, 30.0)
                            .background(Color("TintedGreen"))
                            
                            .frame(width: 160, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                        }
                        Divider()
                        HStack{
                            VStack{
                                
                            }
                            Label {
                                Text("Harga Rumah").font(.headline)
                            } icon: {
                                Image(systemName: "house")
                            }
                            Text("Rp 2.000.000")
                        }
                        Divider()
                        HStack{
                            Label {
                                Text("Tenor").font(.headline)
                            } icon: {
                                Image(systemName: "calendar.badge.clock")
                            }
                            Text("10 Tahun")
                        }
                        Divider()
                        HStack{
                            Label {
                                Text("Suku Bunga").font(.headline)
                            } icon: {
                                Image(systemName: "percent")
                            }
                            Text("10%")
                        }
                        Divider()
                    }
                    Color("TintedGreen")
                        .frame(width: 350, height: 500) // Adjust size as needed
                        .cornerRadius(20)
                        .opacity(0)
                    
                }
                .background(Color(.white))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                
                
                
                
                Spacer() // Pushes content to center
                
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
            
            
            .padding()
            
        }
        .background(Color("TintedGreen"))
        
    }
}


#Preview {
    newHasil2()
}
