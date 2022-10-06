//
//  MainDashboard.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

struct MainDashboard: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [SortDescriptor(\.dueDate)],
                  predicate: NSPredicate(format: "status.length > 0")
    ) var loans: FetchedResults<Loan>
    
    var body: some View {
        let balances: [Int16] = loans.map{ $0.amount}
        let balance: Int16 = balances.reduce(0, +)
        
        Group{
            Text("Outstanding Balance")
            Text("$ \(balance)")
                .font(.system(size:35, weight:.medium))
        }.foregroundColor(.white)
        
        Group{
            Text("No. of Loan Contract")
            Text("\(loans.count)")
                .font(.system(size:35, weight:.medium))
        }.foregroundColor(.white)
        

        Spacer()
        
        Group{
            Text("Credit Score")
            Text("n.a.")
                .font(.system(size:25, weight:.medium))
        }.foregroundColor(.white)
    }
}

struct MainDashboard_Previews: PreviewProvider {
    static var previews: some View {
        MainDashboard()
    }
}
