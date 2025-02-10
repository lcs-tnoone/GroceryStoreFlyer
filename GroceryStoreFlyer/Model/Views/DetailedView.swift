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
        List(weeklyFlyer.items) { currentFoodItem in
            VStack {
                // Display item image with text overlay
                Image(currentFoodItem.image)
                    .resizable()
                    .scaledToFit()
                    .overlay(alignment: .topLeading) {
                        Text(currentFoodItem.name)
                            .foregroundStyle(.blue)
                            .font(.system(size: 32))
                            .fontWeight(.black)
                            .overlay {
                                Text(currentFoodItem.name)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 32))
                                    .fontWeight(.black)
                                    .offset(x: -3, y: -3)
                    
                            }
                            .padding(10)
                    }

                // Display item price and size
                Text("\(currentFoodItem.price) per \(currentFoodItem.size)")
            }
        }
        .navigationTitle(weeklyFlyer.name)
    }
}

#Preview {
    NavigationStack{
        DetailedView(weeklyFlyer: thisWeeksFlyer.departments[0])
    }
}
 
