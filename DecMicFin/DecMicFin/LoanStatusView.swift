//
//  LoanStatusView.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

struct LoanStatusView: View {
    let loanStatus: String

    var body: some View {
        switch loanStatus{
        case "Pending":
            return AnyView(LoanStatusPending())
        case "Outstanding":
            return AnyView(LoanStatusOutstanding())
        case "Repaid":
            return AnyView(LoanStatusRepaid())
        default:
            return AnyView(LoanStatusPending())
        }
    }
}

struct LoanStatusPending: View {
    var body: some View{
        VStack{
            Text("🟠")
            Text("Pending")
                .font(.system(size: 10))
        }
    }
}
struct LoanStatusOutstanding: View {
    var body: some View{
        VStack{
            Text("🟡")
            Text("Outstanding")
                .font(.system(size: 10))
        }
    }
}
struct LoanStatusRepaid: View {
    var body: some View{
        VStack{
            Text("🟢")
            Text("Repaid")
                .font(.system(size: 10))
        }
    }
}

struct LoanStatusView_Previews: PreviewProvider {
    static var previews: some View {
        LoanStatusView(loanStatus: "Repaid")
    }
}
