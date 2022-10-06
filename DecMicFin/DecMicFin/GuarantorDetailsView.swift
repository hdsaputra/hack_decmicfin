//
//  SwiftUIView.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 7/10/22.
//

import SwiftUI

struct GuarantorDetailsView: View {
    let loan: Loan
    
    var body: some View {
        ZStack {
            Color("CryptoBlue").edgesIgnoringSafeArea(.all)
            .navigationBarTitle("Uncollateralized")
            .foregroundColor(.white)
            
            ScrollView{
                VStack (alignment: .leading){
                    Text("Loan Amount:\(loan.amount)")
                        .padding(5)
                    
                    Text("Due Date:\(loan.dueDate)")
                        .padding(5)
                    
                    Text("Number of Payments: 4")
                        .padding(5)
                    
                    
                    Group{
                        Text("Current Guarantors")
                        Text("Mr. A")
                        Text("Mr. B")
                    }
                    .frame()
                    .padding(5)
                    
                    Section{
                        Button("Guarantee $100"){
                        }
                        .foregroundColor(.green)
                    }
                }
                
            }
            .navigationTitle("\(loan.id ?? UUID())")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

