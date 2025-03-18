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
        Text("Hasil Perhitungan")
            .fontWeight(.black)
            .font(.largeTitle)
        
            
            
            
        GroupBox() {
            Label {
                Text("Cicilan Pokok")
            } icon: {
               // Image(systemName: "ruler")
            }
            .padding(.leading, -180.0)
            HStack{
                TextField("", text: .constant("")).textFieldStyle(.roundedBorder)
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
                TextField("", text: .constant("")).textFieldStyle(.roundedBorder)
                    .disabled(true)
                Text("Rp     ")
            }
            
            
            Label {
                Text("Tenor")
            } icon: {
                //Image(systemName: "ruler")
            }
            .padding(.leading, -180.0)
            HStack{
                TextField("", text: .constant("")).textFieldStyle(.roundedBorder)
                    .disabled(true)
                Text("Rp     ")
            }
            
        }
        .padding([.top, .leading, .trailing], 0.0)
        
        HStack{
            Button {
                print("")
            }
            
            label:{
                Image(systemName: "house.fill")
            }
            Button("Tambah Perhitungan") {
                
            }
        }
        .padding(.top)
        .buttonStyle(.bordered)
        
        
       

    }
    
    
}

#Preview {
    Hasil()
}
