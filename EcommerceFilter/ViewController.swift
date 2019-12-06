//
//  ViewController.swift
//  EcommerceFilter
//
//  Created by Neeraj Gupta on 07/12/19.
//  Copyright © 2019 Neeraj Gupta. All rights reserved.
//

import UIKit

let cellReuseIdentifier = "FilterTableViewCell"
let cellNibName = "FilterTableViewCell"
class ViewController: UIViewController {

    let filterDataSource : FilterDataSource = FilterDataSource()
    var filterDelegate : FilterDelegate {
        let delegate = FilterDelegate()
        delegate.delegate = self
        return delegate
    }
    
    let categoryDataSource : CategoryDataSource = CategoryDataSource()
    var categoryDelegate : CategoryDelegate {
        let delegate = CategoryDelegate()
        delegate.delegate = self
        return delegate
    }

    @IBOutlet weak var filterTableView: UITableView!{
        didSet{
            // create datasource and delegate, then set to tableview
            // i'm using default test cases for now.
            
            filterTableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellReuseIdentifier)
            filterTableView.rowHeight = UITableView.automaticDimension
            filterTableView.estimatedRowHeight = 100
            filterTableView.separatorStyle = .none
            
            filterTableView.delegate = filterDelegate
            filterTableView.dataSource = filterDataSource
        }
    }
    @IBOutlet weak var categoryTableView: UITableView!{
        didSet{
            // create datasource and delegate, then set to tableview
            // i'm using default test cases for now.
            categoryTableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellReuseIdentifier)
            categoryTableView.rowHeight = UITableView.automaticDimension
            categoryTableView.estimatedRowHeight = 100
            categoryTableView.tableFooterView = UIView(frame: .zero)
            
            categoryTableView.delegate = categoryDelegate
            categoryTableView.dataSource = categoryDataSource
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


extension ViewController : CategoryItemSelectedDelegate, FilterItemSelectedDelegate {
    func didSelectCategoryAt(tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // selected category,
        // update filter tablview datasource, reload filtertablview
    }
    
    func didSelectFilterAt(tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // perform whatever action you want to perform with filter collection.
    }
    
    
}
