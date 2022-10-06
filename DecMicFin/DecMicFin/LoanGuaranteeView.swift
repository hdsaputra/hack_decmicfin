//
//  LoanGuaranteeView.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

struct LoanGuaranteeView: View {
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.dueDate)],
                  predicate: NSPredicate(format: "status == %@", "Pending")
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
                .navigationBarTitle("Uncollateralized")
                .foregroundColor(.white)
                
                List{
                    ForEach(loans){ loan in
                        NavigationLink{
                            GuarantorDetailsView(loan: loan)
                            
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

struct LoanGuaranteeView_Previews: PreviewProvider {
    static var previews: some View {
        LoanGuaranteeView()
    }
}
