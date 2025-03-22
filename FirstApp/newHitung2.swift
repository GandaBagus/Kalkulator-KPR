import SwiftUI

struct rumahKPR{
    var hargaRumah: Double = 0
    var lamaTenor: Double = 0
    var sukuBunga: Double = 0
    var cicilanPokok: Double{
        hargaRumah / (lamaTenor*12)
    }
    var cicilanBunga: Double{
        (hargaRumah * sukuBunga * lamaTenor / 120)/100
    }
    var cicilanTotal: Double{
        cicilanPokok + cicilanBunga
    }
}

struct newHitung2: View {
    var a:Int = 2
    var b:Int = 5
    @State var hasil:Int = 0
    
    @State var rumah1: rumahKPR = rumahKPR(hargaRumah: 0, lamaTenor: 0,sukuBunga: 0)
    
    @State var hargaRumah = 300_000_000.0
    @State var lamaTenor = 10.0
    @State var sukuBunga = 5.0
    
    
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
                    
                    VStack (spacing: 1){
                        HStack {
                            Spacer()
                            Button("Clear") {
                                HapusInput()
                            }
                        }
                        
                        
                        // Hitung Button
                        ZStack{
                            
                            NavigationLink(destination: newHasil2(rumah1: $rumah1)) {
                                Text("Hitung!")
                            }
                            .simultaneousGesture(TapGesture().onEnded {
                                //                                                hasil = a+b
                                //                                               print(hasil)
                                let newRumah = rumahKPR(hargaRumah: hargaRumah, lamaTenor: lamaTenor,sukuBunga: sukuBunga)
                                rumah1 = newRumah
                                
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
    
    
    func HapusInput(){
        hargaRumah = 0.0
        lamaTenor = 0.0
        sukuBunga = 0.0
    }
    
}



#Preview {
    newHitung2()
}
