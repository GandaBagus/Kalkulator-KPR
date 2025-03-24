//
//  hitung.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 23/03/25.
//

import SwiftUI


struct Hitung: View {
    var a:Int = 2
    var b:Int = 5
    @State var hasil:Int = 0
    
    @Binding var rumah: rumahKPR
    @Binding var rumah1IsInputed: Bool
    @Binding var rumah2IsInputed: Bool
    
    @State var hargaRumah = 0.0
    @State var lamaTenor = 0.0
    @State var sukuBunga = 0.0
    
    @State private var showWarning = false
    
    private var isInputValid: Bool {
           hargaRumah > 0 && lamaTenor > 0 && sukuBunga > 0
       }
    
    @State var isAlertPresented : Bool = false
    //var isBody: Bool = false
    
    //@Binding var isSecond:Bool
    
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer() // Pushes everything up
                
                VStack(alignment: .leading, spacing: 25) {
                    // Title
                    VStack {
                        Text("Masukkan Data")
                            .fontWeight(.bold)
                            .font(.largeTitle)
                            .foregroundStyle(Color("newcolor"))
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    
                    // Input Fields
                    Label {
                        Text("Harga Rumah").font(.title2)
                    } icon: {
                        Image(systemName: "house")
                    }
                    TextField("", value: $hargaRumah, formatter: NumberFormatter() )
                        .padding([.top, .leading, .bottom])
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                    
                    
                    Label {
                        Text("Tenor").font(.title2)
                    } icon: {
                        Image(systemName: "calendar.badge.clock")
                    }
                    TextField("", value: $lamaTenor,formatter: NumberFormatter() )
                        .padding([.top, .leading, .bottom])
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                    
                    Label {
                        Text("Suku Bunga").font(.title2)
                    } icon: {
                        Image(systemName: "percent")
                    }
                    
                    TextField("", value: $sukuBunga,formatter: NumberFormatter() )
                        .padding([.top, .leading, .bottom])
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                    //                    Picker("Select Interest", selection: .constant("Suku Bunga")) {
                    //                        Text("Suku Bunga").tag("Suku Bunga")
                    //                        Text("2.5%").tag("2.5%")
                    //                        Text("3.0%").tag("3.0%")
                    //                        Text("4.5%").tag("4.5%")
                    //                        Text("5.0%").tag("5.0%")
                    //                    }
                    //                    .padding([.top, .leading, .bottom])
                    //                    .frame(maxWidth: .infinity)
                    //                    .font(.body)
                    //                    .pickerStyle(.menu)
                    //                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                    //                    .foregroundStyle(Color("newcolor"))
                    //                    .tint(.primary)
                    if showWarning {
                        VStack{
                            Color.red
                        }
                                        Text("⚠️ Harap isi semua field sebelum melanjutkan.")
                                            .foregroundColor(.red)
                                            .padding()
                                    }
                         
                    
                    VStack (spacing: 1){
                        HStack {
                            Spacer()
                            Button("Clear") {
                                HapusInput()
                            }
                        }
                        
                        
                        // Hitung Button
                        //if(isInputValid){
                            NavigationLink(destination: Hasil(rumah: $rumah, rumah1IsInputed: $rumah1IsInputed, rumah2IsInputed: $rumah2IsInputed)) {
                                Text("Hitung!")
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                if isInputValid {
                                    //                                                        rumah1 = rumahKPR(hargaRumah: hargaRumah, lamaTenor: lamaTenor, sukuBunga: sukuBunga)
                                    //                                                    }
                                    //                                                hasil = a+b
                                    //                                               print(hasil)
//                                    let newRumah = rumahKPR(hargaRumah: hargaRumah, lamaTenor: lamaTenor,sukuBunga: sukuBunga)
//                                    rumah = newRumah
                                }else {
                                                                                            showWarning = true
                                                                                        }
                                
                                
                                //print(isSecond)
                                
                            })
                            .navigationBarBackButtonHidden(true)
                            .foregroundStyle(Color(.black))
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            .fontWeight(.bold)
                            .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                            .padding()
                            .disabled(!isInputValid)
                            .onTapGesture {
                                if (!isInputValid){
                                    isAlertPresented = true
                                }
                                print("test")
                            }
                        //}
                            
                            
                    }
                    
                    
                    
                }
                .padding()
                .background(Color("TintedGreen"))
                .clipShape(RoundedRectangle(cornerRadius: 50))
                
                
                //Spacer() // Ensures green extends fully
            }
            .frame(maxHeight: .infinity)
            //.background(Color("TintedGreen")) // Extends green background
            .ignoresSafeArea(.all)
            .alert("Data Tidak Valid",isPresented: $isAlertPresented, actions:{
                Button("Kembali"){}
                
            }, message:{
                Text("Pastikan semua data terisi")
            })
        }
        .foregroundStyle(Color("newcolor"))
        
        
        
        
        
    }
    
   
    
    func HapusInput(){
        hargaRumah = 0.0
        lamaTenor = 0.0
        sukuBunga = 0.0
    }
    
}


