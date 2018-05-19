//
//  JobsChoosed.swift
//  JobSeeking_App
//
//  Created by Thanh on 10/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

class JobsChoosed: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var jobsNew: [Job]?
    
    //    var lblNumberJobsChoosed: UILabel? {
    //        didSet {
    //            lblNumberJobs.text = lblNumberJobsChoosed?.text
    //        }
    //    }
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(JobCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        
        setupNavBar()
        setupView()
    }
    
    // setup background
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
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.backgroundColor = .clear
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    func setupView() {
        view.addSubview(backGroundView)
        view.addSubview(blurView)
        view.addSubview(lblNumberJobs)
        view.addSubview(collectionView)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        
        blurView.frame = view.frame
        
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lblNumberJobs]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-5-[v0]-5-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": collectionView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-90-[v0(50)]-3-[v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lblNumberJobs,"v1": collectionView]))
    }
    
    let lblNumberJobs: UILabel = {
        let lbl = UILabel()
        lbl.backgroundColor = .clear
        lbl.textColor = .white
        lbl.textAlignment = .center
        
        
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        return lbl
    }()
    
    func setupNavBar(){
        let lable = UILabel()
        lable.text = "Your's Jobs"
        lable.textColor = UIColor.white
        lable.font = UIFont.boldSystemFont(ofSize: 25)
        lable.backgroundColor = UIColor.clear
        self.navigationItem.titleView = lable
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = jobsNew?.count {
            return count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! JobCell
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.backgroundColor = UIColor.clear
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.job = jobsNew?[indexPath.row]
        cell.backgroundColor = .clear
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
        jobDetailController.job = jobsNew?[indexPath.row]
        
        navigationController?.pushViewController(jobDetailController, animated: true)
    }
}

