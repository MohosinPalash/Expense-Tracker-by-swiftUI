//
//  Homepage.swift
//  ExpenseTracker
//
//  Created by Mohosin Islam Palash on 1/5/23.
//

import SwiftUI

struct Homepage: View {
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    NavigationLink ("Add", destination: CreateExpense())
                        .padding(.trailing)
                        .font(.title)
                        .foregroundColor(Color.brown)
                }
                TabView {
                    ExpenseListPending()
                        .tabItem {
                            Image(systemName: "dollarsign.circle")
                            Text("Pending")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                    ExpenseListPaid()
                        .tabItem {
                            Image(systemName: "dollarsign.square.fill")
                            Text("Paid")
                                .font(.title)
                                .fontWeight(.bold)
                        }
                }
                .accentColor(Color.brown)
            }
            
                    .navigationTitle("Expense Tracker")
                }
        
        }
    }

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
