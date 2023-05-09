//
//  ExpenseRow.swift
//  ExpenseTracker
//
//  Created by Mohosin Islam Palash on 1/5/23.
//

import SwiftUI

struct ExpenseRow: View {
    
    var expense: Expense
    
    var body: some View {
        HStack {
            Circle()
                .frame(width: 50, height: 50)
                .padding(.leading)
            
            VStack (alignment: .leading){
                Text(expense.title)
                    .font(.title)
                Text(expense.description)
                Text(expense.creationDate)
            }
            .foregroundColor(Color.white)
            Spacer()
            
            Text("\(expense.amount)")
                .font(.title)
                .foregroundColor(Color.white)
                .padding(.horizontal)
        }
        .frame(width: .infinity, height: 60)
        .padding(.vertical)
        .background(Color.brown)
        .cornerRadius(10)
    }
}

struct ExpenseRow_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseRow(expense: expenses[1])
    }
}
