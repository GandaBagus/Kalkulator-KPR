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
    @State var lamaTenor : Double = 0.0
    @State var sukuBunga : Double = 0.0
    
    @State private var showWarning = false
    
    private var isInputValid: Bool {
        hargaRumah > 0 && lamaTenor > 0 && sukuBunga > 0
       }
    
    @State var isAlertPresented : Bool = false
    @State private var showSheet: Bool = false
    //var isBody: Bool = false
    
    //@Binding var isSecond:Bool
//    var availableInterestRates: [Double] {
//        if lamaTenor == 10 {
//                return [2.5] // Only 2.5% for 10 years
//            } else if let years = lamaTenor, years > 0 {
//                return [3.0, 3.5, 4.0] // Other terms get standard rates
//            } else {
//                return [] // Invalid input, no rates
//            }
//        }

    
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

                    
                    
                    Button("\(sukuBunga, specifier: "%.1f")%           "){
                        showSheet = true
                    }
                    .frame(maxWidth:.infinity)
                    .padding([.top, .leading, .bottom])
//                    .background(Color.red)
//                    .frame(maxWidth:.infinity)
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
                                    let newRumah = rumahKPR(hargaRumah: hargaRumah, lamaTenor: lamaTenor,sukuBunga: sukuBunga)
                                    rumah = newRumah
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
                                
                                
                            }
//                        if let interestRate = sukuBunga {
//                                           Text("Selected Interest Rate: \(interestRate, specifier: "%.1f")%")
//                                       }
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
            
            .sheet(isPresented: $showSheet) {
                InterestRateSheet(selectedRate: Binding(
                    get: { sukuBunga }, // No need for nil coalescing (??)
                    set: { sukuBunga = $0 }
                ))
                            .presentationDetents([.medium])  // Medium Sheet
                    }
            
        }
        .foregroundStyle(Color("newcolor"))
        
        
        
        
        
    }
    
   
    
    func HapusInput(){
        hargaRumah = 0.0
        lamaTenor = 0.0
        sukuBunga = 0.0
    }
    
 
    
}

struct InterestRateSheet: View {
    @Binding var selectedRate: Double
    let availableRates: [Double] = [2.5, 3.0, 3.5, 4.0, 5.0,6.0, 7.0]
    
    
    
    

    var body: some View {
        VStack {
                   Text("Pilih Suku Bunga")
                       .font(.headline)
                       .padding()
            List{
                ForEach(availableRates, id: \.self) { rate in
                    Button("\(rate, specifier: "%.1f")%") {
                        selectedRate = rate
                    }
                    .padding([.top, .leading, .bottom])
                    .frame(maxWidth:.infinity)
                    .background(RoundedRectangle(cornerRadius: 0).stroke(Color.black.opacity(0.5), lineWidth: 1))
                    .background(Color("TintedGreen"))
            }
//                .background(Color("TintedGreen"))
                   
                       
                       
                   }
            .background(Color("TintedGreen"))
               }
        .background(Color("TintedGreen"))
           }
    
}

