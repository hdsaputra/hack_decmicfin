//
//  ContentView.swift
//  DecMicFin
//
//  Created by Hendra.DSaputra on 2/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        ZStack{
            LinearGradient(gradient: Gradient(
                            colors: [Color("CryptoBlue"), Color("CryptoBlue")]),
                startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
            .ignoresSafeArea()

            VStack{
                HStack{
                    Text("Hendra")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                        
                }
                
                // Quick Summary
                MainDashboard()
                
                
                //NavBar Mid
                NavMainButtons()

                
                //Pending Payment
                Group{
                    List{
                        Text("Upcoming Scheduled Payments")
                        Label("3 Jan 2023 \t SG$ 100", systemImage: "hourglass")
                        Label("3 Feb 2023 \t SG$ 100", systemImage: "hourglass")
                        Label("3 Mar 2023 \t SG$ 100", systemImage: "hourglass")
                        Label("4 Apr 2023 \t SG$ 100", systemImage: "hourglass")
                    }.cornerRadius(5).padding()
                    
                }
                
                // NavBar Below
                HStack{
                    VStack{
                        Image(systemName: "house")
                            .imageScale(.large)
                            .frame(maxWidth: .infinity)
                        Text("Home")
                            .font(.system(size: 10))
                    }
                    VStack{
                        Image(systemName: "dollarsign.circle")
                            .imageScale(.large)
                            .frame(maxWidth: .infinity)
                        Text("Finance")
                            .font(.system(size: 10))
                    }
                    VStack{
                        Image(systemName: "person.fill")
                            .imageScale(.large)
                            .frame(maxWidth: .infinity)
                        Text("Profile")
                            .font(.system(size: 10))
                    }
                }.padding().background(Color(.white))
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


