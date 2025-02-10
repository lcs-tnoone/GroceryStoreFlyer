//
//  ContentView.swift
//  GroceryStoreFlyer
//
//  Created by Thomas Noone on 2025-02-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List(thisWeeksFlyer.departments) {currentdepartment in
                NavigationLink {
                    DetailedView(weeklyFlyer: currentdepartment)
                } label: {
                    Text(currentdepartment.name)
                }
                
            }
            .navigationTitle("Weekly Flyer")
        }
    }
}

#Preview {
    ContentView()
}


