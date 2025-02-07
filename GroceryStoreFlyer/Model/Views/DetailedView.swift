//
//  NavigationView.swift
//  GroceryStoreFlyer
//
//  Created by Thomas Noone on 2025-02-06.
//

import SwiftUI

struct DetailedView: View {
    // MARK: Stored properties
    let weeklyFlyer: Department

    // MARK: Computed properties
    var body: some View {
        List(weeklyFlyer.items) {currentFoodItem in
            Text(currentFoodItem.name)
            Image(currentFoodItem.image)
                .resizable()
                .scaledToFit()
            Text(currentFoodItem.size)
            Text(currentFoodItem.price)
            

        }
        .navigationTitle(weeklyFlyer.name)
    }
}

#Preview {
    NavigationStack{
        DetailedView(weeklyFlyer: thisWeeksFlyer.departments[0])
    }
}
 
