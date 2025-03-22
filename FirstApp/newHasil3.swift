//
//  newHitung.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 19/03/25.
//
import SwiftUI

struct newHasil3: View {
    @Binding var hargaRumah2:Double
    @Binding var lamaTenor2:Double
    @Binding var sukuBunga2:Double
    @Binding var cicilanPokok2:Double
    @Binding var cicilanBunga2:Double
    @Binding var cicilanTotal2:Double
    
    @State var isSecond:Bool = false
    
//    @Binding var hargaRumah2:Double
//    @Binding var lamaTenor2:Double
//    @Binding var sukuBunga2:Double
//    @Binding var cicilanPokok2:Double
//    @Binding var cicilanBunga2:Double
//    @Binding var cicilanTotal2:Double
    
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
                                Text("\(cicilanTotal2)").font(.title).padding(.vertical, 100.0)
                            }
                            .padding(.horizontal, 80.0)
                            
                            .background(Color("TintedGreen"))
                            
                            .frame(height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            HStack{
                                VStack{
                                    Text("Cicilan Pokok").font(.headline).frame(width: 116.0, height: 20.0)
                                    Text("\(cicilanPokok2)")
                                        .frame(width: 116.0, height: 20.0)
                                }
                                .padding(.all, 40.0)
                                .background(Color("TintedGreen"))
                                
                                .frame(width: 160, height: 50)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                VStack{
                                    Text("Cicilan Bunga").font(.headline).frame(width: 116.0, height: 20.0)
                                    Text("\(cicilanBunga2)")
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
                                Text("\(hargaRumah2)")
                            }
                            Divider()
                            HStack{
                                Label {
                                    Text("Tenor").font(.headline)
                                } icon: {
                                    Image(systemName: "calendar.badge.clock")
                                }
                                Text("\(lamaTenor2)")
                            }
                            Divider()
                            HStack{
                                Label {
                                    Text("Suku Bunga").font(.headline)
                                } icon: {
                                    Image(systemName: "percent")
                                }
                                Text("\(sukuBunga2)")
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
                        
                        NavigationLink(destination: perbandingan()) {
                            Text("Bandingkan")
                        }
                        .simultaneousGesture(TapGesture().onEnded {
                            //                                                hasil = a+b
                            //                                                print(hasil)
                            //hitungkpr()
                            isSecond = true
                            
                            print("NavigationLink in newHasil2 tapped! isSecond: \(isSecond)")
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
                            isSecond = true
                            
                            print("NavigationLink in newHasil2 tapped! isSecond: \(isSecond)")
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
            print(isSecond)
        }
        
        
    }
}


#Preview {
    newHasil3(
        hargaRumah2: Binding.constant(500_000_000),
        lamaTenor2: Binding.constant(20),
        sukuBunga2: Binding.constant(5.0),
        cicilanPokok2: Binding.constant(2_500_000),
        cicilanBunga2: Binding.constant(500_000),
        cicilanTotal2: Binding.constant(3_000_000)
        
    )
}
