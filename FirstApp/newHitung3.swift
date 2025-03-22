import SwiftUI

struct newHitung3: View {
    var a:Int = 2
    var b:Int = 5
    @State var hasil:Int = 0
    
    
    @State var hargaRumah2 = 300_000_000.0
    @State var lamaTenor2 = 10.0
    @State var sukuBunga2 = 5.0
    @State var cicilanPokok2 = 0.0
    @State var cicilanBunga2 = 0.0
    @State var cicilanTotal2 = 0.0
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
                        Text("Perhitungan 2")
                    }
                    
                    // Input Fields
                    Label {
                        Text("Harga Rumah").font(.title2)
                    } icon: {
                        Image(systemName: "house")
                    }
                    TextField("", value: $hargaRumah2, formatter: NumberFormatter() )
                        .padding([.top, .leading, .bottom])
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                    
                    
                    Label {
                        Text("Tenor").font(.title2)
                    } icon: {
                        Image(systemName: "calendar.badge.clock")
                    }
                    TextField("", value: $lamaTenor2,formatter: NumberFormatter() )
                        .padding([.top, .leading, .bottom])
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color.black.opacity(0.5), lineWidth: 3))
                    
                    Label {
                        Text("Suku Bunga").font(.title2)
                    } icon: {
                        Image(systemName: "percent")
                    }
                    
                    TextField("", value: $sukuBunga2,formatter: NumberFormatter() )
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
                    
                    VStack (spacing: 1){
                        HStack {
                            Spacer()
                            Button("Clear") {
                                HapusInput()
                            }
                        }
                        
                        
                        // Hitung Button
                        ZStack{
                            
                            NavigationLink(destination: newHasil3(hargaRumah2:$hargaRumah2, lamaTenor2: $lamaTenor2,sukuBunga2: $sukuBunga2, cicilanPokok2: $cicilanPokok2,cicilanBunga2: $cicilanBunga2, cicilanTotal2: $cicilanTotal2)) {
                                Text("Hitung!")
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                //                                                hasil = a+b
                                //                                               print(hasil)
                            
                                hitungkpr()
                                
                                
                                //print(isSecond)
                                
                            })
                            .navigationBarBackButtonHidden(true)
                            .foregroundStyle(Color(.black))
                            .padding(.vertical, 20)
                            .frame(maxWidth: .infinity)
                            
                            .fontWeight(.bold)
                            .background(RoundedRectangle(cornerRadius: 8).stroke( Color.black.opacity(0.05), lineWidth: 2))
                            .padding()
                            
                            //                            NavigationLink {
                            //                                    // MARK: Destination View
                            //                                    newHasil2()
                            //                                } label: {
                            //                                    Text("New Calculation")
                            //                                }
                            //                            Button {
                            //                                //NavigationStack{
                            //
                            //                                //}
                            //
                            //                                //Change()
                            //                                //newHasil2()
                            //                                // Calculate action
                            //
                            //                                //print("test")
                            //                            } label: {
                            //                                Text("Hitung")
                            //                                    .foregroundStyle(Color(.white))
                            //                                    .padding(.vertical, 20)
                            //                                    .frame(maxWidth: .infinity)
                            //                                    .background(Color("newcolor"))
                            //                                    .fontWeight(.bold)
                            //                            }
                            
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .padding()
                            
                            //                            NavigationLink {
                            //                                    // MARK: Destination View
                            //                                    newHasil2()
                            //                                } label: {
                            //                                    Text("New Calculation")
                            //                                }
                            
                            
                            
                        }
                        
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
        }
        .foregroundStyle(Color("newcolor"))
        
        
        
        
        
    }
    
    func hitungkpr(){
        
       
            cicilanPokok2 = hargaRumah2 / (lamaTenor2*12)
            cicilanBunga2 = (hargaRumah2 * sukuBunga2 * lamaTenor2 / 120)/100
            cicilanTotal2 = cicilanPokok2 + cicilanBunga2
            
            print(cicilanTotal2)
        
        
       
        
    }
    
    func HapusInput(){
        hargaRumah2 = 0.0
        lamaTenor2 = 0.0
        sukuBunga2 = 0.0
    }
    
}



#Preview {
    newHitung3()
}
