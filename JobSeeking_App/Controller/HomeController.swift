//
//  HomeController.swift
//  JobSeeking_App
//
//  Created by Thanh on 05/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    var majors: [Major]?
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(MajorCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.alwaysBounceVertical = true // scroll cell when cell is not enough to scroll
        
        setupNavBar()
        setupTopView()
        setupHomeView()
        
        majors = Major.Majors()
        
    }
    
    let backGroundView: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "background1")
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
    
    // setupBar
    func setupNavBar() {
        let lable = UILabel()
        lable.text = "CareerBuilder"
        lable.textColor = UIColor.white
        lable.font = UIFont.boldSystemFont(ofSize: 25)
        lable.backgroundColor = UIColor.clear
        self.navigationItem.titleView = lable
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return majors!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MajorCell
        
        
        cell.major = majors?[indexPath.row]
        cell.backgroundColor = .clear
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let majorController = MajorController()
        majorController.jobs = majors![indexPath.row].jobs
        majorController.major = majors?[indexPath.row]
        
        navigationController?.pushViewController(majorController, animated: true)
        
        
        
        //        if let joBs = majors?[indexPath.row].jobs as? [JobMO] {
        //            majorController?.jobs = joBs
        //            print("Done")
        //        }
        
        //        majorController?.jobs = majors?[indexPath.row].jobs as? [JobMO]
        
        
        //navigationController?.navigationItem.title = major1
        
    }
    
    // initial topView
    let topView: UIView = {
        let topView = UIView()
        topView.backgroundColor = UIColor.yellow
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    let lbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Majors List"
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let line: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor.darkGray
        line.translatesAutoresizingMaskIntoConstraints = false
        
        return line
    }()
    
    func setupTopView() {
        topView.addSubview(lbl)
        topView.addSubview(line)
        
        topView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl]))
        topView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": line]))
        topView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[v0][v1(1)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl, "v1": line]))
    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        cv.translatesAutoresizingMaskIntoConstraints = false
        
        
        return cv
    }()
    
    func setupHomeView() {
        view.addSubview(backGroundView)
        view.addSubview(blurView)
        view.addSubview(topView)
        view.addSubview(collectionView)
        
        blurView.frame = view.frame
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        
        topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        collectionView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
}

