//
//  CreateExpense.swift
//  ExpenseTracker
//
//  Created by Mohosin Islam Palash on 1/5/23.
//

import SwiftUI

struct CreateExpense: View {
    
    @State var title: String = ""
    @State var description: String = "Short Description of the expense..."
    @State var amountMessage: String = ""
    @State var amount: Int = 0
    @State var expenseType: Bool = false
    @State var expensePriority: Bool = false
    
    @State var printInformation = ""
    @State var selectedCategory = "Select Category"
    
    var body: some View {
        NavigationView {
            VStack (alignment: .leading) {
                
                //Title
                Group {
                    Text("Expense Title")
                        .font(.headline)
                        .foregroundColor(Color.brown)
                        .fontWeight(.bold)
                    
                    TextField("Title of the expense...", text: $title)
                        .padding()
                        .background(Color.brown.opacity(0.2).cornerRadius(10))
                        .font(.headline)
                }
                
                //Description
                Group {
                    Text("Expense Description")
                        .font(.headline)
                        .foregroundColor(Color.brown)
                        .fontWeight(.bold)
                    
                    TextEditor(text: $description)
                        .frame(height: 100)
                        .colorMultiply(Color.brown.opacity(0.2))
                        .font(.headline)
                        .foregroundColor(Color.black.opacity(1))
                        .cornerRadius(10)
                        .toolbar {
                            ToolbarItemGroup(placement: .keyboard) {
                                Button("Reset") {
                                    description = "Short Description of the expense..."
                                }
                                Button("Clear") {
                                    description = ""
                                }
                            }
                        }
                        
                }
                
                //Amount
                Group {
                    Text("Amount")
                        .font(.headline)
                        .foregroundColor(Color.brown)
                        .fontWeight(.bold)
                    
                    TextField("Expense Amount in Taka...", text: $amountMessage)
                        .padding()
                        .background(Color.brown.opacity(0.2).cornerRadius(10))
                        .font(.headline)
                        .keyboardType(.numberPad)
                }
                
                //Expense Category
                
                Group {
                    HStack {
                        Text("Category")
                            .padding(.vertical)
                        
                        Spacer()
                        
                        Menu {
                            Button(action: {
                                selectedCategory = "Gasoline"
                            }, label: {
                                Text("Gasoline")
                            })
                            Button(action: {
                                selectedCategory = "Grocery"
                            }, label: {
                                Text("Grocery")
                            })
                            Button(action: {
                                selectedCategory = "Shopping (Clothes)"
                            }, label: {
                                Text("Shopping (Clothes)")
                            })
                            Button(action: {
                                selectedCategory = "Shopping (Cosmetics)"
                            }, label: {
                                Text("Shopping (Cosmetics)")
                            })
                            Button(action: {
                                selectedCategory = "Shopping (Shoes)"
                            }, label: {
                                Text("Shopping (Shoes)")
                            })
                            Button(action: {
                                selectedCategory = "Restaurant"
                            }, label: {
                                Text("Restaurant")
                            })
                        } label: {
                           Label(
                            title: {Text(selectedCategory)},
                            icon: {Image(systemName: "arrow.down.circle")}
                           )
                        }
                    }
                    .foregroundColor(Color.brown)
                    .font(.headline)
                }
                
                //Expense Type: recurrent or random , Keyboard dismiss,
                Group {
                    Toggle(
                        isOn: $expenseType,
                        label: {
                        Text("Expense Type")
                                .foregroundColor(Color.brown)
                                .font(.headline)
                                .fontWeight(.bold)
                        
                    })
                    .toggleStyle(SwitchToggleStyle(tint: Color.brown))
                    .padding(.top)
                    HStack {
                        Spacer()
                        Text(expenseType ? "Recurrent" : "Random")
                            .foregroundColor(Color.brown)
                            .fontWeight(.bold)
                    }
                }
                
                
                //Submit Button
                Button(action: {
                    amount = Int(amountMessage) ?? 0
                    printInformation = "Title: " + title + "\nDescription" + description + "\nAmount: \(amount)"
                    
                }, label: {
                    Text("Submit".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.brown.cornerRadius(10))
                        .font(.headline)
                        .foregroundColor(Color.white)

                })
                
                Spacer()
                Text(printInformation)
                
            }
            .padding()
            .navigationTitle("Create Expense")
        }
    }
}

struct CreateExpense_Previews: PreviewProvider {
    static var previews: some View {
        CreateExpense()
    }
}
