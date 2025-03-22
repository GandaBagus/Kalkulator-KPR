//
//  newHitung.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 19/03/25.
//
import SwiftUI

struct newHasil3: View {
    
    @Binding var rumah1: rumahKPR
    @Binding var rumah2: rumahKPR
    
//    @Binding var hargaRumah2:Double
//    @Binding var lamaTenor2:Double
//    @Binding var sukuBunga2:Double
//    @Binding var cicilanPokok2:Double
//    @Binding var cicilanBunga2:Double
//    @Binding var cicilanTotal2:Double
    
//    @State var isSecond:Bool = false
//    
//    @Binding var hargaRumah:Double
//    @Binding var lamaTenor:Double
//    @Binding var sukuBunga:Double
//    @Binding var cicilanPokok:Double
//    @Binding var cicilanBunga:Double
//    @Binding var cicilanTotal:Double
    
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
                            Text("Perhitungan 2")
                            Text("Total Pembayaran").font(.largeTitle).bold()
                            
                            VStack{
                                Text("\(rumah2.cicilanTotal)").font(.title).padding(.vertical, 100.0)
                            }
                            .padding(.horizontal, 80.0)
                            
                            .background(Color("TintedGreen"))
                            
                            .frame(height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            HStack{
                                VStack{
                                    Text("Cicilan Pokok").font(.headline).frame(width: 116.0, height: 20.0)
                                    Text("\(rumah2.cicilanPokok)")
                                        .frame(width: 116.0, height: 20.0)
                                }
                                .padding(.all, 40.0)
                                .background(Color("TintedGreen"))
                                
                                .frame(width: 160, height: 50)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                VStack{
                                    Text("Cicilan Bunga").font(.headline).frame(width: 116.0, height: 20.0)
                                    Text("\(rumah2.cicilanBunga)")
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
                                Text("\(rumah2.hargaRumah)")
                            }
                            Divider()
                            HStack{
                                Label {
                                    Text("Tenor").font(.headline)
                                } icon: {
                                    Image(systemName: "calendar.badge.clock")
                                }
                                Text("\(rumah2.lamaTenor)")
                            }
                            Divider()
                            HStack{
                                Label {
                                    Text("Suku Bunga").font(.headline)
                                } icon: {
                                    Image(systemName: "percent")
                                }
                                Text("\(rumah2.sukuBunga)")
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
                        
                        NavigationLink(destination: perbandingan(rumah1: $rumah1, rumah2: $rumah2)) {
                            Text("Bandingkan")
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            //                                                hasil = a+b
                            //                                                print(hasil)
                            //hitungkpr()
//                            isSecond = true
//                            
//                            print("NavigationLink in newHasil2 tapped! isSecond: \(isSecond)")
                        })
                        .foregroundStyle(Color(.black))
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        
                        .fontWeight(.bold)
                        .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                        .padding()
                        
                        
                        NavigationLink(destination: newHitung2()) {
                            Text("Kembali ke Halaman Utama")
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            //                                                hasil = a+b
                            //                                                print(hasil)
                            //hitungkpr()
//                            isSecond = true
//                            
//                            print("NavigationLink in newHasil2 tapped! isSecond: \(isSecond)")
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
        .onAppear{
//            print(isSecond)
        }
        
        
    }
}

