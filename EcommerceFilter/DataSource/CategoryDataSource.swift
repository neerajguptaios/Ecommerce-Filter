//
//  CategoryDataSource.swift
//  EcommerceFilter
//
//  Created by Neeraj Gupta on 07/12/19.
//  Copyright © 2019 Neeraj Gupta. All rights reserved.
//

import UIKit

class CategoryDataSource: NSObject, UITableViewDataSource {
    
    var categories : [Category] = [.price, .store, .category, .store, .denim]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FilterTableViewCell", for: indexPath) as? FilterTableViewCell {
            cell.headingLabel.text = categories[indexPath.row].getDescription()
            cell.backgroundColor = .clear
            return cell
        }
        return UITableViewCell()
    }
    

}

enum Category {
    case price
    case store
    case category
    case size
    case denim
    
    func getDescription() -> String {
        switch self {
        case .price:
            return "Price"
        case .store:
            return "Store"
        case .category:
            return "Category"
        case .size:
            return "Size"
        case .denim:
            return "Denim"
        }
    }
}
