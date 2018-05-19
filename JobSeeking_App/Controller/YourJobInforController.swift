//
//  ViewController.swift
//  JobSeeking_App
//
//  Created by Thanh on 02/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

extension UITableView {
    func reloadData(completion: @escaping ()->()) {
        UIView.animate(withDuration: 0, animations: { self.reloadData() })
        { _ in completion() }
    }
}

let arrayUserData: [[String]] = [["Any location","Ha Noi","Ho Chi Minh","Da Nang","Kien Giang","Can Tho","Thanh Hoa","Nghe An","Nam Dinh","Hai Phong","Hai Duong","Hoa Binh","Hung Yen","Khanh Hoa","Ca Mau","Quang Binh","Quang Ngai","Lam Dong","Ninh Binh","Dong Nai","Dien Bien","Ha Giang","Son La","Soc Trang","Thai Nguyen"],["Any Salary","200", "300", "400", "500","600", "700", "800","900", "1000","1200", "1500", "1800", "2000"],["Any Time","Full time", "Part time"]]

class YourJobInfor:UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UITextFieldDelegate {
    
    var homeController: HomeController?
    
    let cellId = "cellId"
    let cellIdTV = "cellIdTV"
    
    let provinceTV = ProvinceTableView()
    let salaryTV = SalaryTableView()
    let workingTypeTV = WorkingTypeTableView()
    //    var position = ""
    
    var jobs: [Job]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameWorking.delegate = self
        
        collectionView.register(Cell.self, forCellWithReuseIdentifier: cellId)
        
        navigationItem.title = ""
        //        navigationItem.tintColor = .black
        
        setupView()
        
        setupNavBar()
        
    }
    
    func setupNavBar(){
        let lable = UILabel()
        lable.text = "Your informations"
        lable.textColor = UIColor.white
        lable.font = UIFont.boldSystemFont(ofSize: 25)
        lable.backgroundColor = UIColor.clear
        self.navigationItem.titleView = lable
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    let nameWorking: UITextField = {
        let name = UITextField()
        name.layer.cornerRadius = 5
        name.layer.borderWidth = 1
        name.becomeFirstResponder()
        name.backgroundColor = .clear
        name.attributedPlaceholder = NSAttributedString(string: "Type work's name", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
        //        name.placeholder = "Type work's name"
        
        
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    // enter and content in textfiled is updated
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameWorking.resignFirstResponder()
        return true
    }
    
    let backGroundView: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "backgroundImage")
        img.contentMode = .scaleAspectFill
        
        img.translatesAutoresizingMaskIntoConstraints = false
        
        return img
    }()
    
    let blurView: UIVisualEffectView = {
        let blur = UIBlurEffect(style: .light)
        let blur2 = UIVisualEffectView(effect: blur)
        blur2.alpha = 0.4
        
        return blur2
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.clear
        cv.translatesAutoresizingMaskIntoConstraints = false
        
        return cv
    }()
    
    let btnFindJobs: UIButton = {
        let btn = UIButton()
        btn.setTitle("Find Jobs", for: UIControlState.normal)
        btn.backgroundColor = .gray
        btn.layer.cornerRadius = 8
        btn.layer.shadowOpacity = 0.5
        btn.layer.shadowRadius = 4
        btn.addTarget(self, action: #selector(handleFindJobsBtn), for: .touchUpInside)
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    //    var jobsChoosed: [Job]?
    
    @objc func handleFindJobsBtn() {
        
        var jobsChoosed = [Job]()
        var jobsChoosedIndex = [Double]()
        
        for job in jobs! {
            //            print(job.id)
            let valueCM = contextMatching(keywork: job.workingName!, location: job.address!, salary: job.salary!, workingType: job.workingType!)
            if valueCM >= 0.35 {
                jobsChoosed.append(job)
                jobsChoosedIndex.append(valueCM)
            }
        }
        
        //        || provinceTV.province == "" || salaryTV.salary == "" || workingTypeTV.workingType == ""
        if nameWorking.text == "" {
            let alert = UIAlertController(title: "Notice", message: "Please type work name!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            
            present(alert, animated: true, completion: nil)
        } else if jobsChoosed.count == 0 {
            let alert = UIAlertController(title: "Notice", message: "Data not found!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
            }))
            
            present(alert, animated: true, completion: nil)
        }
        
        var tempDouble: Double = 0
        
        var jobTemp: Job?
        
        for i in stride(from: 0, to: jobsChoosed.count - 1, by: 1) {
            for j in stride(from: i + 1, to: jobsChoosed.count, by: 1) {
                if jobsChoosedIndex[i] < jobsChoosedIndex[j] {
                    tempDouble = jobsChoosedIndex[j]
                    jobsChoosedIndex[j] = jobsChoosedIndex[i]
                    jobsChoosedIndex[i] = tempDouble
                    
                    jobTemp = jobsChoosed[j]
                    jobsChoosed[j] = jobsChoosed[i]
                    jobsChoosed[i] = jobTemp!
                }
            }
        }
        
        let jobsChoosedView = JobsChoosed()
        jobsChoosedView.jobsNew = jobsChoosed
        jobsChoosedView.lblNumberJobs.text = "\(jobsChoosed.count) Jobs Found"
        
        navigationController?.pushViewController(jobsChoosedView, animated: true)
    }
    
    func setupView() {
        view.addSubview(backGroundView)
        view.addSubview(blurView)
        view.addSubview(nameWorking)
        view.addSubview(collectionView)
        view.addSubview(btnFindJobs)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        
        blurView.frame = view.frame
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[v0]-15-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameWorking]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[v0]-15-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": collectionView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-100-[v0]-100-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": btnFindJobs]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[v0(50)]-10-[v1(200)]-5-[v2(50)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameWorking, "v1": collectionView, "v2": btnFindJobs]))
    }
    
    // context matching
    func contextMatching(keywork: String, location: String, salary: Int, workingType: String) -> Double {
        
        var e1: Float = 0
        var e2: Float = 0
        var e3: Float = 0
        var e4: Float = 0
        
        
        let salaryNew = (salaryTV.salary as NSString).intValue
        
        if keywork.range(of: nameWorking.text!, options: .caseInsensitive) != nil  {
            e1 = 1
        } else {
            e1 = 0
        }
        
        if provinceTV.province == location || provinceTV.province == "Any location" {
            e2 = 1
        } else {
            e2 = 0
        }
        
        if salaryTV.salary == "Any Salary" {
            e3 = 1
        } else if abs(salaryNew - Int32(salary)) <= 100  {
            e3 = 1
        } else if abs(salaryNew - Int32(salary)) <= 200 {
            e3 = 0.5
        } else {
            e3 = 0
        }
        
        if workingTypeTV.workingType == "Any Time" {
            e4 = 1
        } else if workingTypeTV.workingType == workingType {
            e4 = 1
        } else {
            e4 = 0
        }
        
        
        let w1 = 0.6, w2 = 0.25, w3 = 0.1, w4 = 0.05
        
        // av
        
        let av1 = Double(e1) * w1
        let av2 = Double(e2) * w2
        let av3 = Double(e3) * w3
        let av4 = Double(e4) * w4
        
        
        let sv = av1 + av2 + av3 + av4
        
        return sv
        
    }
    
    
    
    var indexPaths: [NSIndexPath] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! Cell
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.backgroundColor = UIColor.clear
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        
        if indexPath.row == 0 {
            if provinceTV.province == "" {
                cell.jobTxtField.attributedPlaceholder = NSAttributedString(string: "Any location", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
                cell.jobTxtField.isUserInteractionEnabled = false
            } else {
                cell.jobTxtField.text = provinceTV.province
                cell.jobTxtField.isUserInteractionEnabled = false
            }
        } else if indexPath.row == 1 {
            if salaryTV.salary == "" {
                cell.jobTxtField.attributedPlaceholder = NSAttributedString(string: "Choose salary", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
                cell.jobTxtField.isUserInteractionEnabled = false
            } else {
                cell.jobTxtField.text = salaryTV.salary
                cell.jobTxtField.isUserInteractionEnabled = false
            }
        } else if indexPath.row == 2 {
            if workingTypeTV.workingType == "" {
                cell.jobTxtField.attributedPlaceholder = NSAttributedString(string: "Working type", attributes: [NSAttributedStringKey.foregroundColor : UIColor.white])
                cell.jobTxtField.isUserInteractionEnabled = false
            } else {
                cell.jobTxtField.text = workingTypeTV.workingType
                cell.jobTxtField.isUserInteractionEnabled = false
            }
            
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 30, height: 50)
    }
    
    var index = 0
    
    var indexPathProvince = IndexPath()
    var indexPathSalary = IndexPath()
    var indexPathWorkingType = IndexPath()
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            indexPathProvince = indexPath
            provinceTV.view.isHidden = false
            showSettings(index: 1)
            self.provinceTV.doneButton.addTarget(self, action: #selector(handleDoneBtnProvince), for: .touchUpInside)
        } else if indexPath.row == 1 {
            indexPathSalary = indexPath
            salaryTV.view.isHidden = false
            showSettings(index: 2)
            self.salaryTV.doneButton.addTarget(self, action: #selector(handleDoneBtnSalary), for: .touchUpInside)
        } else if indexPath.row == 2 {
            indexPathWorkingType = indexPath
            workingTypeTV.view.isHidden = false
            showSettings(index: 3)
            self.workingTypeTV.doneButton.addTarget(self, action: #selector(handleDoneBtnWorkingType), for: .touchUpInside)
        }
    }
    
    let blackView = UIView()
    
    @objc func showSettings(index: Int) {
        
        if let window = UIApplication.shared.keyWindow {
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            
            window.addSubview(blackView)
            
            if index == 1 {
                self.provinceTV.view.isHidden = false
                
                window.addSubview(provinceTV.view)
                let y =  window.frame.height / 2
                
                provinceTV.view.frame = CGRect(x: 0, y: 150, width: window.frame.width - 20, height: y)
                blackView.frame = window.frame
                blackView.alpha = 0
                
                UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                    self.blackView.alpha = 1
                    
                    self.provinceTV.view.frame = CGRect(x: 10, y: 200, width: window.frame.width - 20, height: y)
                }, completion: nil)
            } else if index == 2 {
                self.salaryTV.view.isHidden = false
                window.addSubview(salaryTV.view)
                let y =  window.frame.height / 2
                
                salaryTV.view.frame = CGRect(x: 0, y: 150, width: window.frame.width, height: y)
                blackView.frame = window.frame
                blackView.alpha = 0
                
                UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                    self.blackView.alpha = 1
                    
                    self.salaryTV.view.frame = CGRect(x: 10, y: 200, width: window.frame.width - 20, height: y)
                }, completion: nil)
            } else if index == 3 {
                self.workingTypeTV.view.isHidden = false
                window.addSubview(workingTypeTV.view)
                let y =  window.frame.height / 2
                
                workingTypeTV.view.frame = CGRect(x: 0, y: 150, width: window.frame.width, height: y)
                blackView.frame = window.frame
                blackView.alpha = 0
                
                UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                    self.blackView.alpha = 1
                    
                    self.workingTypeTV.view.frame = CGRect(x: 10, y: 200, width: window.frame.width - 20, height: y)
                }, completion: nil)
            }
            
        }
    }
    
    @objc func handleDismiss() {
        UIView.animate(withDuration: 0.5) {
            self.blackView.alpha = 0
            self.provinceTV.view.isHidden = true
        }
    }
    
    @objc func handleDoneBtnProvince() {
        
        // if u dont choose any location, u have to choose one
        if provinceTV.province == "" {
            let alert = UIAlertController(title: "Notice", message: "Please choose your location!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
                self.blackView.alpha = 1
                self.provinceTV.view.isHidden = false
            }))
            
            present(alert, animated: true, completion: nil)
        }
        
        UIView.animate(withDuration: 0.5) {
            self.blackView.alpha = 0
            self.provinceTV.view.isHidden = true
        }
        collectionView.reloadItems(at: [indexPathProvince])
    }
    
    @objc func handleDoneBtnSalary() {
        
        // if u dont choose any salary, u have to choose one
        if salaryTV.salary == "" {
            let alert = UIAlertController(title: "Notice", message: "Please choose your salary!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
                self.blackView.alpha = 1
                self.salaryTV.view.isHidden = false
            }))
            
            present(alert, animated: true, completion: nil)
        }
        UIView.animate(withDuration: 0.5) {
            self.blackView.alpha = 0
            self.salaryTV.view.isHidden = true
        }
        collectionView.reloadItems(at: [indexPathSalary])
    }
    
    @objc func handleDoneBtnWorkingType() {
        
        // if u dont choose any workingtype, u have to choose one
        if workingTypeTV.workingType == "" {
            let alert = UIAlertController(title: "Notice", message: "Please choose your workingtype!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                alert.dismiss(animated: true, completion: nil)
                self.blackView.alpha = 1
                self.workingTypeTV.view.isHidden = false
            }))
            
            present(alert, animated: true, completion: nil)
        }
        UIView.animate(withDuration: 0.5) {
            self.blackView.alpha = 0
            self.workingTypeTV.view.isHidden = true
        }
        collectionView.reloadItems(at: [indexPathWorkingType])
    }
}


