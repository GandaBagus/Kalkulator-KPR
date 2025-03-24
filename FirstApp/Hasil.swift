//
//  newHitung.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 19/03/25.
//
import SwiftUI

struct Hasil: View {
    
    @Binding var rumah: rumahKPR
    @Binding var rumah1IsInputed: Bool
    @Binding var rumah2IsInputed: Bool
    
    var body: some View {
        NavigationStack{
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
                                Text("\(rumah.cicilanTotal)").font(.title).padding(.vertical, 100.0)
                            }
                            .padding(.horizontal, 80.0)
                            
                            .background(Color("TintedGreen"))
                            
                            .frame(height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            HStack{
                                VStack{
                                    Text("Cicilan Pokok").font(.headline).frame(width: 116.0, height: 20.0)
                                    Text("\(rumah.cicilanPokok)")
                                        .frame(width: 116.0, height: 20.0)
                                }
                                .padding(.all, 40.0)
                                .background(Color("TintedGreen"))
                                
                                .frame(width: 160, height: 50)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                VStack{
                                    Text("Cicilan Bunga").font(.headline).frame(width: 116.0, height: 20.0)
                                    Text("\(rumah.cicilanBunga)")
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
                                Text("\(rumah.hargaRumah)")
                            }
                            Divider()
                            HStack{
                                Label {
                                    Text("Tenor").font(.headline)
                                } icon: {
                                    Image(systemName: "calendar.badge.clock")
                                }
                                Text("\(rumah.lamaTenor)")
                            }
                            Divider()
                            HStack{
                                Label {
                                    Text("Suku Bunga").font(.headline)
                                } icon: {
                                    Image(systemName: "percent")
                                }
                                Text("\(rumah.sukuBunga)")
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
                        if !rumah1IsInputed && !rumah2IsInputed {
                            NavigationLink(destination: perbandingan()) {
                                Text("Tambah Perhitungan")
                            }
                            .simultaneousGesture(TapGesture().onEnded{
                                rumah1IsInputed = true
                            })
                            .foregroundStyle(Color(.black))
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            
                            .fontWeight(.bold)
                            .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                            .padding()
                        }
                        else if rumah1IsInputed && !rumah2IsInputed{
                            NavigationLink(destination: perbandingan()) {
                                Text("Bandingkan")
                            }
                            .simultaneousGesture(TapGesture().onEnded{
                                rumah2IsInputed = true
                            })
                            .foregroundStyle(Color(.black))
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            
                            .fontWeight(.bold)
                            .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                            .padding()
                        }
                        
                        NavigationLink(destination: Hitung(rumah: $rumah, rumah1IsInputed: $rumah1IsInputed, rumah2IsInputed: $rumah2IsInputed)) {
                            Text("Kembali ke Halaman Utama")
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            //                                                hasil = a+b
                            //                                                print(hasil)
                            //hitungkpr()
                            
                        })
                        .foregroundStyle(Color(.black))
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        
                        .fontWeight(.bold)
                        .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                        .padding()
                        
                        //                        Button {
                        //                            // Put what to calculate
                        //                        } label: {
                        //                            Text("Kembali ke Halaman Utama")
                        //                                .foregroundStyle(Color(.black))
                        //                                .padding(.vertical, 20)
                        //                                .frame(maxWidth: .infinity)
                        //
                        //                                .fontWeight(.bold)
                        //
                        //                        }
                        //                        .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                        //                        .padding()
                    }
                    
                    Spacer()
                }
                
                
                .padding()
                
            }
            .background(Color("TintedGreen"))
        }
        
        
    }
}

