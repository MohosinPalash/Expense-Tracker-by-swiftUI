//
//  ExpenseListPending.swift
//  ExpenseTracker
//
//  Created by Mohosin Islam Palash on 1/5/23.
//

import SwiftUI

struct ExpenseListPending: View {
    var body: some View {
        List (expenses){ expense in
            if !expense.isPaid {
                ExpenseRow(expense: expense)
            }
        }
    }
}

struct ExpenseListPending_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseListPending()
    }
}
