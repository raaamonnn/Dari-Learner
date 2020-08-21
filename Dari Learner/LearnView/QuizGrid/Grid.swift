//
//  Grid.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/20/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View{ //Identifiable so you can traverse through each item in the view
    
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView){
        self.items = items
        self.viewForItem = viewForItem
    }
    
    var body: some View {
        GeometryReader { geometry in
            self.body(for: GridLayout(itemCount: self.items.count, in: geometry.size))
        }
    }
    
    func body(for layout: GridLayout) -> some View {
        ForEach(items) { item in
            self.body(for:item, in: layout)
        }
    }
    
    func body(for item: Item, in layout: GridLayout) -> some View{
        let index = self.index(of: item)
        return viewForItem(item)
            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(ofItemAt: index!)) //is never nil
    }
    
    func index(of item: Item) -> Int? {
        for index in 0..<items.count {
            if items[index].id == item.id{
                return index
            }
        }
        return nil
    }
}
