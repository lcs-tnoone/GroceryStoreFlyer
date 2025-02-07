//
//  NavigationView.swift
//  GroceryStoreFlyer
//
//  Created by Thomas Noone on 2025-02-06.
//

import SwiftUI

struct NavigationView: View {
    // MARK: Stored properties
    let weeklyFlyer: Department

    // MARK: Computed properties
    var body: some View {
        List(weeklyFlyer.items) {currentFoodItem in
            Text(currentFoodItem.name)
        }
        .navigationTitle(weeklyFlyer.name)
    }
}

#Preview {
    NavigationStack{
        NavigationView(weeklyFlyer: thisWeeksFlyer.departments[0])
    }
}
 
