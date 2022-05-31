//
//  Bootcamp30.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-23.
//

import SwiftUI

// Add, edit and delete items on a List
struct Bootcamp30: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "orange", "lemon", "peach"
    ]
    
    @State var vegetables: [String] = [
        "tomato", "broccoli", "spinach", "pepper", "onion", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List{
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        // Because the function signature matches, we don't need to write the parameters
                        .onMove(perform: move)
                        .listRowBackground(Color.gray)
                    }
                
                Section(header: Text("Vegetables")) {
                    ForEach(vegetables, id: \.self) { vegetable in
                        Text(vegetable.capitalized)
                    }
                }
            }
            .accentColor(.purple)
            //.listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

struct Bootcamp30_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp30()
    }
}
