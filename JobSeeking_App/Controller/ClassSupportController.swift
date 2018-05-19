//
//  ClassSupport.swift
//  JobSeeking_App
//
//  Created by Thanh on 10/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

class ProvinceTableView: OptionalView {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var province = ""
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUserData[0].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = arrayUserData[0][indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        province = (tableView.cellForRow(at: indexPath)?.textLabel?.text)!
    }
}

class SalaryTableView: OptionalView {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var salary = ""
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUserData[1].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = arrayUserData[1][indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        salary = (tableView.cellForRow(at: indexPath)?.textLabel?.text)!
    }
}

class WorkingTypeTableView: OptionalView {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var workingType = ""
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayUserData[2].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = arrayUserData[2][indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        workingType = (tableView.cellForRow(at: indexPath)?.textLabel?.text)!
    }
    
    
}

