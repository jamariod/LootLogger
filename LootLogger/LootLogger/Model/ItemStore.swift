//
//  ItemStore.swift
//  LootLogger
//
//  Created by Jamario Davis on 9/24/20.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    // The @discardableResult annotation means that a caller of this function is free to ignore the result of calling this function
    @discardableResult func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    func removeItem(_ item: Item) {
        if let index = allItems.firstIndex(of: item) {
            allItems.remove(at: index)
        }
    }
}
