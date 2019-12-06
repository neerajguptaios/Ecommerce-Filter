//
//  CategoryDelegate.swift
//  EcommerceFilter
//
//  Created by Neeraj Gupta on 07/12/19.
//  Copyright © 2019 Neeraj Gupta. All rights reserved.
//

import UIKit

protocol CategoryItemSelectedDelegate : class  {
    func didSelectCategoryAt(tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}

class CategoryDelegate: NSObject, UITableViewDelegate {
    
    weak var delegate : CategoryItemSelectedDelegate?
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectCategoryAt(tableView: tableView, didSelectRowAt: indexPath)
    }
}
