//
//  Banding.swift
//  FirstApp
//
//  Created by Ganda Bagus Wibisono on 17/03/25.
//
import SwiftUI
 
struct Banding: View {
    var body: some View {
            VStack {
                Text("Your Final Result")
                    .font(.title)
                    .bold()
                    .padding(.bottom, 10)
                
                HStack(spacing: 20) {
                    CalculationCard(title: "Perhitungan 1")
                    CalculationCard(title: "Perhitungan 2")
                }
                Button{
                    
                }label:
                {
                    Image(systemName: "house.fill")
                }
            }
            .padding()
            .buttonStyle(.bordered)
        }
    }

    struct CalculationCard: View {
        let title: String
        
        var body: some View {
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .bold()
                    .font(.headline)
                
                InfoRow(title: "Harga Rumah", value: "Rp 300.000.000")
                InfoRow(title: "Suku Bunga", value: "5%")
                InfoRow(title: "Tenor", value: "10 Tahun")
                
                Text("Rincian Cicilan:")
                    .bold()
                
                InfoRow(title: "Cicilan Pokok", value: "Rp 2.000.000")
                InfoRow(title: "Cicilan Bunga", value: "Rp 1.000.000")
                InfoRow(title: "Total Cicilan", value: "Rp 3.000.000")
            }
            .padding()
            .frame(width: 170)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(12)
        }
    }

    struct InfoRow: View {
        let title: String
        let value: String
        
        var body: some View {
            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.subheadline)
                    .bold()
                Text(value)
                    .font(.subheadline)
            }
        }
    }

#Preview {
    Banding()
}
