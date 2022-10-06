//
//  NavMainButtons.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

struct NavMainButtons: View {
    var body: some View {
        HStack{
            NavButtonRequest()
                .frame(maxWidth: .infinity)
            NavButtonGuarantee()
                .frame(maxWidth: .infinity)
            NavButtonHistory()
                .frame(maxWidth: .infinity)
        }
        .background(Color("CryptoBlue"))
    }
}

struct NavButtonRequest: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: LoanRequestView()){
            ZStack{
                
                Image(systemName: "hand.raised.fill")
                    .imageScale(.large)
                }
            }
                .buttonStyle(.plain)
            .background(
                ZStack{
                    Circle()
                        .fill(Color.white)
                        .frame(width:40, height:40)
                }
            )
            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Borrow")
                .font(.system(size: 12))
                .foregroundColor(.white)
        }
    }
}

struct NavButtonGuarantee: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: LoanGuaranteeView()){
            ZStack{
                
                Image(systemName: "hand.thumbsup.fill")
                    .imageScale(.large)
                }
            }
                .buttonStyle(.plain)
            .background(
                ZStack{
                    Circle()
                        .fill(Color.white)
                        .frame(width:40, height:40)
                }
            )
            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("Guarantee")
                .font(.system(size: 12))
                .foregroundColor(.white)
        }
    }
}

struct NavButtonHistory: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: LoanHistoryView()){
            ZStack{
                
                Image(systemName: "note.text")
                    .imageScale(.large)
                }
            }
                .buttonStyle(.plain)
            .background(
                ZStack{
                    Circle()
                        .fill(Color.white)
                        .frame(width:40, height:40)
                }
            )
            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text("History")
                .font(.system(size: 12))
                .foregroundColor(.white)
        }
    }
}

struct NavMainButtons_Previews: PreviewProvider {
    static var previews: some View {
        NavMainButtons()
    }
}
