//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Mohosin Islam Palash on 27/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Homepage()
    }
}

struct ContentView_Previews: PreviewProvider {
    
    @StateObject var vm = ExpenseViewModel()
    static var previews: some View {
        ContentView()
    }
}
