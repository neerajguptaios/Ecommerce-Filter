//
//  FilterDelegate.swift
//  EcommerceFilter
//
//  Created by Neeraj Gupta on 07/12/19.
//  Copyright © 2019 Neeraj Gupta. All rights reserved.
//

import UIKit

protocol FilterItemSelectedDelegate : class  {
    func didSelectFilterAt(tableView: UITableView, didSelectRowAt indexPath: IndexPath)
}

class FilterDelegate: NSObject, UITableViewDelegate {
    weak var delegate : FilterItemSelectedDelegate?
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.didSelectFilterAt(tableView: tableView, didSelectRowAt: indexPath)
    }
}
