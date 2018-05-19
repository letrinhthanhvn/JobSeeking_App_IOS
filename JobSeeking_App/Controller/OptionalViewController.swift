//
//  OptionalView.swift
//  JobSeeking_App
//
//  Created by Thanh on 03/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

// this class is the view to select detail for YourJobInforController

class OptionalView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 8
        
        setupOptionalView()
    }
    
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.layer.borderColor = UIColor.white.cgColor
        tableView.layer.borderWidth = 1
        tableView.layer.cornerRadius = 8
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    let doneButton: UIButton = {
        let doneBtn = UIButton(type: UIButtonType.system)
        doneBtn.setTitle("Done", for: .normal)
        doneBtn.backgroundColor = .green
        doneBtn.layer.borderColor = UIColor.white.cgColor
        doneBtn.layer.borderWidth = 1
        doneBtn.layer.cornerRadius = 8
        doneBtn.setTitleColor(UIColor.red, for: UIControlState.normal)
        doneBtn.translatesAutoresizingMaskIntoConstraints = false
        return doneBtn
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
    
    func setupOptionalView() {
        
        view.addSubview(tableView)
        view.addSubview(doneButton)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": tableView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": doneButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]-5-[v1(40)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": tableView, "v1": doneButton]))
    }
    
}

