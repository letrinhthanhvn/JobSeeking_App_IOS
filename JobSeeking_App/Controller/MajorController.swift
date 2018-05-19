//
//  MajorController.swift
//  JobSeeking_App
//
//  Created by Thanh on 05/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit


class MajorController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //    var jobs: [JobMO]?
    
    var jobs: [Job]?
    
    var homeController: HomeController?
    
    var major: Major? {
        didSet {
            label.text = major?.nameMajor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavBar()
        //        view.backgroundColor = .white
        collectionView2.delegate = self
        collectionView2.dataSource = self
        
        collectionView2.register(JobCell.self, forCellWithReuseIdentifier: cellId2)
        
        setupTopView()
        setupMajor()
    }
    
    let cellId2 = "cellId2"
    
    let backGroundView: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "background2")
        img.contentMode = .scaleAspectFill
        
        img.translatesAutoresizingMaskIntoConstraints = false
        
        return img
    }()
    
    let blurView: UIVisualEffectView = {
        let blur = UIBlurEffect(style: .light)
        let blur2 = UIVisualEffectView(effect: blur)
        blur2.alpha = 0.6
        
        return blur2
    }()
    
    let topView2: UIView = {
        let topView = UIView()
        //        topView.backgroundColor = UIColor.clear
        topView.alpha = 0.9
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = jobs?.count {
            print(count)
            return count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId2, for: indexPath) as! JobCell
        
        cell.job = jobs?[indexPath.row]
        cell.majorController = self
        cell.backgroundColor = .clear
        cell.layer.borderColor = UIColor.black.cgColor
        cell.backgroundColor = UIColor.clear
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 10, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let jobDetailController = JobDetail()
        jobDetailController.job = jobs?[indexPath.row]
        
        navigationController?.pushViewController(jobDetailController, animated: true)
    }
    
    
    let collectionView2: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView2 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView2.translatesAutoresizingMaskIntoConstraints = false
        collectionView2.backgroundColor = .clear
        return collectionView2
    }()
    
    func setupNavBar(){
        let lable = UILabel()
        lable.text = "CareerBuilder"
        lable.textColor = UIColor.white
        lable.font = UIFont.boldSystemFont(ofSize: 25)
        lable.backgroundColor = UIColor.clear
        self.navigationItem.titleView = lable
    }
    
    //SETUP TOPVIEW
    var label: UILabel = {
        var lbl = UILabel()
        //lbl.text = "CNTT - Phần mềm"
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        lbl.textAlignment = .center
        lbl.backgroundColor = .clear
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let line: UIView = {
        let line = UIView()
        line.backgroundColor = .black
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let findJobBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("Find your jobs", for: .normal)
        btn.backgroundColor = .gray
        btn.layer.borderWidth = 1
        btn.layer.cornerRadius = 8
        btn.layer.shadowOpacity = 0.5
        btn.layer.shadowRadius = 4
        btn.layer.borderColor = UIColor.black.cgColor
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()
    
    @objc func handleFindJob() {
        
        let findJobView = YourJobInfor()
        findJobView.jobs = jobs
        navigationController?.pushViewController(findJobView, animated: true)
    }
    
    func setupTopView() {
        topView2.addSubview(label)
        topView2.addSubview(findJobBtn)
        topView2.addSubview(line)
        
        topView2.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": label]))
        topView2.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": line]))
        topView2.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[v0]-50-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": findJobBtn]))
        
        topView2.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(40)][v1(40)]-16-[v2]-2-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": label, "v1":findJobBtn, "v2": line]))
        
        findJobBtn.addTarget(self, action: #selector(handleFindJob), for: .touchUpInside)
    }
    
    func setupMajor(){
        self.view.addSubview(backGroundView)
        self.view.addSubview(blurView)
        self.view.addSubview(topView2)
        self.view.addSubview(collectionView2)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        
        blurView.frame = self.view.frame
        
        topView2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        topView2.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        topView2.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        topView2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //        collectionView2.topAnchor.constraint(equalTo: topView2.bottomAnchor).isActive = true
        //        collectionView2.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        //        collectionView2.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        //        collectionView2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-5-[v0]-5-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": collectionView2]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0][v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": topView2,"v1": collectionView2]))
    }
}

