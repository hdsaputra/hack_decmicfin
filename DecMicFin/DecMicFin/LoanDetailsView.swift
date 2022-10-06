//
//  LoanDetailsView.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

struct LoanDetailsView: View {
    let loan: Loan
    
    var body: some View {
        ScrollView{
            ZStack (alignment: .bottomTrailing){
                Image("3")
                    .resizable()
                    .scaledToFit()
                
                Text(loan.status ?? "Pending")
                    .font(.caption)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(.black.opacity(0.75))
                    .clipShape(Capsule())
                    .offset(x: -5, y: -5)
            }
            
            VStack (alignment: .leading){
                Text("Loan Amount:")
                    .padding(5)
                
                Text("Due Date:")
                    .padding(5)
                
                Text("Number of Payments: 4")
                    .padding(5)
            
                Group{
                    Text("Upcoming Scheduled Payments")
                    Label("3 Jan 2023 \t SG$ 100", systemImage: "hourglass")
                    Label("3 Feb 2023 \t SG$ 100", systemImage: "hourglass")
                    Label("3 Mar 2023 \t SG$ 100", systemImage: "hourglass")
                    Label("4 Apr 2023 \t SG$ 100", systemImage: "hourglass")
                }
                .frame()
                .padding(5)
                
                
                Group{
                    Text("Guarantors")
                    Text("My Bestie")
                    Text("My Aunt")
                }
                .frame()
                .padding(5)
            }
            
        }
        .navigationTitle("\(loan.id ?? UUID())")
        .navigationBarTitleDisplayMode(.inline)
    }
}
