//
//  ContentView.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 17/03/25.
//

import SwiftUI
 
struct ContentView: View {
    var body: some View {
        
        Text("Masukkan Data")
            .fontWeight(.black)
            .font(.largeTitle)
        
            
            
            
        GroupBox() {
            Label {
                Text("Harga Rumah")
            } icon: {
               // Image(systemName: "ruler")
            }
            .padding(.leading, -180.0)
            HStack{
                TextField("Masukkan harga rumah", text: .constant("")).textFieldStyle(.roundedBorder)
                Text("Rp      ")
            }
            
            
            Label {
                Text("Bunga")
            } icon: {
                //Image(systemName: "ruler")
            }
            .padding(.leading, -180.0)
            HStack{
                
                TextField("Masukkan besaran bunga", text: .constant("")).textFieldStyle(.roundedBorder)
                Text("%        ")
            }
            
            
            Label {
                Text("Tenor")
            } icon: {
                //Image(systemName: "ruler")
            }
            .padding(.leading, -180.0)
            HStack{
                TextField("Masukkan jumlah tenor", text: .constant("")).textFieldStyle(.roundedBorder)
                Text("Bulan  ")
            }
            
        }
        .padding([.top, .leading, .trailing], 0.0)
        
        HStack{
            Button("Hitung") {
                
            }
            //Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                
            //}
        }
        .padding(.top)
        .buttonStyle(.bordered)
        
       

    }
}

#Preview {
    ContentView()
}
