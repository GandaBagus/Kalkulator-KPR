//
//  Hasil.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 17/03/25.
//

import Foundation
import SwiftUI

struct Hasil: View{
    var body: some View{
//        Color("TintedGreen")
        ZStack{
            //Color("TintedGreen")
            VStack{
                Text("Hasil Perhitungan")
                    .foregroundStyle(Color("newcolor"))
        //        Color("TintedGreen")
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.vertical, 60.0)
            }
        }
        .padding(18.0)
        
        
//        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 30)
        
        
        
            
            
            
        //GroupBox() {
        ZStack {
            Color("TintedGreen")
                
            
            VStack( spacing:20){
                Label {
                    Text("Cicilan Pokok")
                } icon: {
                   // Image(systemName: "ruler")
                }
                .padding(.leading, -180.0)
                HStack{
                    TextField("", text: .constant("2.000.000")).textFieldStyle(.roundedBorder)
                        .disabled(true)
                    Text("Rp     ")
                }
                
                
                Label {
                    Text("Cicilan Bunga")
                } icon: {
                    //Image(systemName: "ruler")
                }
                .padding(.leading, -180.0)
                HStack{
                    TextField("", text: .constant("1.000.000")).textFieldStyle(.roundedBorder)
                        .disabled(true)
                    Text("Rp     ")
                }
                
                
                Label {
                    Text("Total Cicilan")
                } icon: {
                    //Image(systemName: "ruler")
                }
                .padding(.leading, -180.0)
                HStack{
                    TextField("", text: .constant("3.000.000")).textFieldStyle(.roundedBorder)
                        .disabled(true)
                    Text("Rp     ")
                }
                
            //}
            .padding([.top, .leading, .trailing], 0.0)
            }
            .padding(.leading)
        }
        .clipShape(RoundedRectangle(cornerRadius: 30))
        
//        .padding(.leading)
            
        
        HStack{
            Button {
                print("")
            }
            
            label:{
                Image(systemName: "house.fill")
                    .frame(maxWidth: 50, maxHeight: 50)
                    .background(Color("newcolor"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
            }
//            .padding()
//            .frame()
            .controlSize(.large)
            
            
//            Button("Tambah Perhitungan") {
//                .background(Color("Hijau"))
//            }
//            .controlSize(.large)
//            .fontWeight(.bold)
//            .backgroundStyle(Color("Hijau"))
            Button{
                
            }label :{
                Text("Tambah Perhitungan")
                    .padding(16)
                    .background(Color("newcolor"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            
        }
        .padding(50.0)
//        .buttonStyle(.borderedProminent)
        .foregroundStyle(.white)
        
        
        Spacer()
        
        
       

    }
    
    
}

#Preview {
    Hasil()
}
