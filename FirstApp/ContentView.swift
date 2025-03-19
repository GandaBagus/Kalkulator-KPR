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
            .padding(.vertical, 100.0)
        
        
        
        
        //GroupBox() {
        VStack{
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
            
            HStack{
                Spacer()
                
                Button("Clear"){
                    
                }
                HStack{
                    Text("             ")
                }
                //  }
                //            ZStack(alignmnet: .trailing){
                //
                //
                //            }
                
                
                
                
            }
            .padding([.top, .leading, .trailing], 0.0)
        }
        .padding([.top, .leading])
        
        
        HStack{
            Button("Hitung") {
                
            }
            .font(.title2)
            
            //Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            
            //}
        }
        .padding(.top)
        .buttonStyle(.bordered)
        
        Spacer()
        
    }
}

#Preview {
    ContentView()
}
