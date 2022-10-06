//
//  LoanHistoryView.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

struct LoanHistoryView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [SortDescriptor(\.dueDate)],
                  predicate: NSPredicate(format: "status.length > 0")
    ) var loans: FetchedResults<Loan>
    
    init() {
            //Use this if NavigationBarTitle is with Large Font
            UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

            //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
            UITableView.appearance().backgroundColor = .clear
        }
    
    var body: some View {
        NavigationView{
            ZStack {
                Color("CryptoBlue").edgesIgnoringSafeArea(.all)
                .navigationBarTitle("Loan History")
                .foregroundColor(.white)
                
                List{
                    ForEach(loans){ loan in
                        NavigationLink{
                            LoanDetailsView(loan: loan)
                            
                        } label: {
                            HStack{
                                LoanStatusView(loanStatus: "\(loan.status ?? "")")
                                VStack(alignment: .leading){
                                    Text("Loan ID \n \(loan.id ?? UUID())")
                                        .font(.headline)
                                    
                                    Text("$\(loan.amount ?? 0)")
                                        .foregroundColor(.secondary)
                                    
                                    Text(loan.dueDate ?? Date(),
                                         format: .dateTime.day().month().year())
                                        .foregroundColor(.secondary)
                                }
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

struct LoanHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        LoanHistoryView()
    }
}
