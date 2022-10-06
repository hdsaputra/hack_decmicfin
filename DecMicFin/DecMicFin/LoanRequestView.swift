//
//  ContentView.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

struct LoanRequestView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var loanAmt = 0
    @State private var loanDur = 4
    @State private var loanSts = "Pending"
    
    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Stepper("Loan Amount", value: $loanAmt, in: 100...500, step:100)
                    Text("$ \(loanAmt)")
                }
                Section{
                    Picker("Loan Duration", selection: $loanDur){
                        ForEach(0..<6){
                            Text(String($0))
                        }
                    }
                }
                Section{
                    Picker("Loan Status", selection: $loanSts){
                        ForEach(["Pending", "Outstanding", "Repaid"], id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section{
                    Button("Request"){
                        let newLoan = Loan(context: moc)
                        newLoan.id = UUID()
                        newLoan.borrowerAddr = "Address-Hash"
                        newLoan.amount = Int16(loanAmt)
                        
                        let currentDate = Date()
                        let loanDueDate = Calendar.current.date(byAdding: .month, value: loanDur, to:currentDate)!
                        newLoan.dueDate = loanDueDate
                        
                        //dummy
                        newLoan.status = loanSts
                        
                        try? moc.save()
                        dismiss()
                    }
                    .foregroundColor(.green)
                }
            }
            .background(Color("CryptoBlue"))
            .navigationTitle("Requesting a Loan")
            .foregroundColor(.black)
        }
        
    }
}

struct LoanRequestView_Previews: PreviewProvider {
    static var previews: some View {
        LoanRequestView()
    }
}
