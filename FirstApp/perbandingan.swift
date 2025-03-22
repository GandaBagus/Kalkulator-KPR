//
//  Comparison.swift
//  KPRapp
//
//  Created by M Ikhsan Azis Pane on 20/03/25.
//

import SwiftUI

struct perbandingan: View {
    
    @Binding var hargaRumah:Double
    @Binding var lamaTenor:Double
    @Binding var sukuBunga:Double
    @Binding var cicilanPokok:Double
    @Binding var cicilanBunga:Double
    @Binding var cicilanTotal:Double
    
    @Binding var hargaRumah2:Double
    @Binding var lamaTenor2:Double
    @Binding var sukuBunga2:Double
    @Binding var cicilanPokok2:Double
    @Binding var cicilanBunga2:Double
    @Binding var cicilanTotal2:Double
    var body: some View {
        ZStack{
            Color(.red)
            ZStack(alignment: .leading){
                VStack {
                    LinearGradient(gradient: Gradient(colors: [Color(.blue), Color(.blue)]), startPoint: .leading, endPoint: .trailing)
                        .frame( maxWidth: .infinity, maxHeight: 150)
                        .cornerRadius(20)
                    
                    Spacer()
                    
                }
                .padding(.top, -80)
                
//                NavigationLink(destination: Comparison()){
//                    
//                    VStack{
//                        Button{}label : {
//                            Image(systemName: "chevron.left")
//                                .font(.largeTitle)
//                                .fontWeight(.bold)
//                                .foregroundStyle(.white)
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                            //                            .background(.blue)
//                            
//                            
//                        }
//                        Spacer()
//                    }
//                    .padding(.horizontal, 25)
//                    
//                }
                
                VStack{
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    ZStack{
                        //                        Color.red
                        Color(.blue)
                        //                            .cornerRadius(25)
                        //                            .padding(20)
                        Section{
                            VStack{
                                Spacer()
                                VStack  {
                                    HStack(spacing: 20){
                                        VStack(alignment: .center){
                                            Text("Harga Rumah")
                                            Text("\(hargaRumah)")
                                                .fontWeight(.bold)
                                            
                                        }
                                        VStack(alignment: .center){
                                            Text("Tenor")
                                            Text("\(lamaTenor)")
                                                .fontWeight(.bold)
                                            
                                        }
                                        VStack(alignment: .center){
                                            Text("Suku Bunga")
                                            Text("\(sukuBunga)")
                                                .fontWeight(.bold)
                                            
                                        }
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .foregroundStyle(.white)
                                    .background(Color(.blue))
                                    .cornerRadius(20)
                                    
                                    Text(" Total pembayaran 1")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    
                                    VStack(alignment: .center){
                                        
                                        Text("\(cicilanTotal)")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(Color(.blue))
                                            .cornerRadius(20)
                                        
                                    }
                                    .padding(10)
                                    
                                    HStack(spacing:10){
                                        VStack(alignment: .leading){
                                            Text("Cicilan Pokok")
                                            Text("\(cicilanPokok)")
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color(.blue))
                                        .cornerRadius(10)
                                        //
                                        VStack(alignment: .leading){
                                            Text("Cicilan Bunga")
                                            Text("\(cicilanBunga)")
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color(.blue))
                                        .cornerRadius(10)
                                        
                                    }
                                    .padding(.horizontal)
                                    
                                    
                                    
                                    
                                    
                                    
                                }
                                .background(Color.white)
                                .frame(maxWidth: .infinity, maxHeight: 180)
                                .padding()
                                
                                Spacer()
                                Spacer()
                                Spacer()
                                
                                VStack  {
                                    HStack(spacing: 20){
                                        VStack(alignment: .center){
                                            Text("Harga Rumah")
                                            Text("\(hargaRumah2)")
                                                .fontWeight(.bold)
                                            
                                        }
                                        VStack(alignment: .center){
                                            Text("Tenor")
                                            Text("\(lamaTenor2)")
                                                .fontWeight(.bold)
                                            
                                        }
                                        VStack(alignment: .center){
                                            Text("Suku Bunga")
                                            Text("\(sukuBunga)")
                                                .fontWeight(.bold)
                                            
                                        }
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .foregroundStyle(.white)
                                    .background(Color(.blue))
                                    .cornerRadius(20)
                                    
                                    Text(" Total pembayaran 2")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                    //                                .padding(.top, 20)
                                    
                                    VStack(alignment: .center){
                                        
                                        Text("\(cicilanTotal2)")
                                            .font(.largeTitle)
                                            .fontWeight(.bold)
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .background(Color(.blue))
                                            .cornerRadius(20)
                                        
                                    }
                                    .padding(10)
                                    
                                    HStack(spacing:10){
                                        VStack(alignment: .leading){
                                            Text("Cicilan Pokok")
                                            Text("\(cicilanPokok2)")
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color(.blue))
                                        .cornerRadius(10)
                                        //
                                        VStack(alignment: .leading){
                                            Text("Cicilan Bunga")
                                            Text("\(cicilanBunga2)")
                                        }
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color(.blue))
                                        .cornerRadius(10)
                                        
                                    }
                                    .padding(.horizontal)
                                    
                                    
                                }
                                .background(Color.white)
                                .frame(maxWidth: .infinity, maxHeight: 180)
                                .padding()
                                
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                    }
                }
                .padding(.top,50)
                
                
            }
        }
        
    }
}

#Preview {
    perbandingan(hargaRumah: Binding.constant(500_000_000),
                 lamaTenor: Binding.constant(20),
                 sukuBunga: Binding.constant(5.0),
                 cicilanPokok: Binding.constant(2_500_000),
                 cicilanBunga: Binding.constant(500_000),
                 cicilanTotal: Binding.constant(3_000_000), hargaRumah2: Binding.constant(500_000_000),
                 lamaTenor2: Binding.constant(20),
                 sukuBunga2: Binding.constant(5.0),
                 cicilanPokok2: Binding.constant(2_500_000),
                 cicilanBunga2: Binding.constant(500_000),
                 cicilanTotal2: Binding.constant(3_000_000))
}
