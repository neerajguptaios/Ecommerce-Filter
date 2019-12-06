//
//  FilterDataSource.swift
//  EcommerceFilter
//
//  Created by Neeraj Gupta on 07/12/19.
//  Copyright © 2019 Neeraj Gupta. All rights reserved.
//

import UIKit

class FilterDataSource: NSObject, UITableViewDataSource {

    
    var filters : [Filter] = [.price, .store, .category, .store, .denim]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FilterTableViewCell", for: indexPath) as? FilterTableViewCell {
            cell.headingLabel.text = filters[indexPath.row].getDescription()
            return cell
        }
        return UITableViewCell()
    }
}

enum Filter {
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
