//
//  JobDetail.swift
//  JobSeeking_App
//
//  Created by Thanh on 05/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

class JobDetail: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var job: Job? {
        didSet {
            nameJob.text = job?.workingName
            nameCompany.text = job?.companyName
            detailDescription.text = job?.jobDescription
            detailRequirement.text = job?.jobRequirement
        }
    }
    
    let imgName: [String] = ["locationIcon", "jobNameIcon", "bagIcon", "dollarIcon", "dateIcon", "clockIcon"]
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backGroundView)
        view.addSubview(blurView)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        
        blurView.frame = view.frame
        view.backgroundColor = .clear
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(GeneralInfor.self, forCellWithReuseIdentifier: cellId)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: 900)
        
        setupNavBar()
        setupMainView()
    }
    
    // setup background
    
    let backGroundView: UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "background3")
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
    
    func setupNavBar(){
        let lable = UILabel()
        lable.text = "Job Detail"
        lable.textColor = UIColor.white
        lable.font = UIFont.boldSystemFont(ofSize: 25)
        lable.backgroundColor = UIColor.clear
        self.navigationItem.titleView = lable
    }
    
    // create and setup JobTop View
    //    let jobDetailView: UIView = {
    //        let jobDetail = UIView()
    //        jobDetail.backgroundColor = .clear
    //        jobDetail.alpha = 0.8
    //        jobDetail.translatesAutoresizingMaskIntoConstraints = false
    //
    //        return jobDetail
    //    }()
    //
    //    let lbl: UILabel = {
    //        let lbl = UILabel()
    //        lbl.text = "Job Detail"
    //        lbl.font = UIFont.systemFont(ofSize: 20)
    //        lbl.textAlignment = .center
    //        lbl.translatesAutoresizingMaskIntoConstraints = false
    //        return lbl
    //    }()
    
    
    // create and setup name work and name company
    let nameWorkAndCompany: UIView = {
        let view = UIView()
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIColor.clear
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 8
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let nameJob: UILabel = {
        let name = UILabel()
        name.text = "Lập trình viên IOS"
        name.textAlignment = .left
        name.numberOfLines = 2
        name.font = UIFont.boldSystemFont(ofSize: 25)
        name.textColor = UIColor(red: 35/255, green: 147/255, blue: 197/255, alpha: 1)
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    let nameCompany: UILabel = {
        let name = UILabel()
        name.text = "Co-Well Behind your success!"
        name.font = UIFont.boldSystemFont(ofSize: 20)
        name.textColor = .black
        
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    // create and setup Job Description and Job Requirement View
    let jobDescriptionView: UIView = {
        let view = UIView()
        view.layer.borderColor = UIColor.black.cgColor
        view.backgroundColor = UIColor.clear
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 8
        
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let jobDescriptionLbl: UILabel = {
        let jobDesLbl = UILabel()
        jobDesLbl.text = "Job Description"
        jobDesLbl.font = UIFont.boldSystemFont(ofSize: 25)
        jobDesLbl.textColor = .black
        
        jobDesLbl.translatesAutoresizingMaskIntoConstraints = false
        
        return jobDesLbl
    }()
    
    let jobRequirementLbl: UILabel = {
        let jobReqLbl = UILabel()
        jobReqLbl.text = "Job Requirement"
        jobReqLbl.font = UIFont.boldSystemFont(ofSize: 25)
        jobReqLbl.textColor = .black
        
        jobReqLbl.translatesAutoresizingMaskIntoConstraints = false
        
        return jobReqLbl
    }()
    
    let detailDescription: UILabel = {
        let detailDes = UILabel()
        //        detailDes.backgroundColor = .green
        detailDes.numberOfLines = 0
        detailDes.text = "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng."
        detailDes.contentMode = .topLeft
        
        detailDes.translatesAutoresizingMaskIntoConstraints = false
        return detailDes
    }()
    
    let detailRequirement: UILabel = {
        let detailReq = UILabel()
        //        detailReq.backgroundColor = .green
        detailReq.numberOfLines = 0
        detailReq.text = "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n"
        
        detailReq.translatesAutoresizingMaskIntoConstraints = false
        
        
        return detailReq
    }()
    
    // create "More Informations" view
    let moreInforView: UIView = {
        let moreInfor = UIView()
        moreInfor.backgroundColor = .red
        
        moreInfor.translatesAutoresizingMaskIntoConstraints = false
        
        return moreInfor
    }()
    
    // setup job description and job requirement View
    func setupJobDesReqView() {
        jobDescriptionView.addSubview(jobDescriptionLbl)
        jobDescriptionView.addSubview(detailDescription)
        jobDescriptionView.addSubview(jobRequirementLbl)
        jobDescriptionView.addSubview(detailRequirement)
        
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        
        blurView.frame = view.frame
        
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(60)]-10-[v1(200)]-10-[v2(60)]-10-[v3]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobDescriptionLbl,"v1": detailDescription,"v2": jobRequirementLbl,"v3": detailRequirement]))
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobDescriptionLbl]))
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": detailDescription]))
        
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobRequirementLbl]))
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": detailRequirement]))
    }
    
    
    // setup name work and name company View
    func setupNameWorkCompany() {
        nameWorkAndCompany.addSubview(nameJob)
        nameWorkAndCompany.addSubview(nameCompany)
        
        nameWorkAndCompany.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(60)][v1(50)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameJob,"v1": nameCompany]))
        nameWorkAndCompany.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameJob]))
        nameWorkAndCompany.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameCompany]))
    }
    
    let scrollView = UIScrollView()
    
    func setupMainView() {
        scrollView.alwaysBounceVertical = true
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
        
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        setupBigView()
        
        scrollView.addSubview(bigView)
        
        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": bigView]))
        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": bigView]))
        bigView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        bigView.heightAnchor.constraint(equalToConstant: 1000).isActive = true
        
    }
    
    func setupBigView() {
        
        //        bigView.addSubview(backGroundView)
        //        bigView.addSubview(blurView)
        //        bigView.addSubview(jobDetailView)
        bigView.addSubview(nameWorkAndCompany)
        bigView.addSubview(collectionView)
        bigView.addSubview(jobDescriptionView)
        setupNameWorkCompany()
        setupJobDesReqView()
        
        //        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        //        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": backGroundView]))
        //
        //        blurView.frame =
        
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[v0(125)]-2-[v1(302)]-2-[v2]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameWorkAndCompany,"v1": collectionView,"v2": jobDescriptionView]))
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-5-[v0]-5-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameWorkAndCompany]))
        
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-5-[v0]-5-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": collectionView]))
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-5-[v0]-5-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobDescriptionView]))
    }
    
    let bigView: UIView = {
        let bigView = UIView()
        bigView.translatesAutoresizingMaskIntoConstraints = false
        
        return bigView
    }()
    
    // create CollectionView
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.layer.borderColor = UIColor.black.cgColor
        cv.backgroundColor = UIColor.clear
        cv.layer.borderWidth = 1
        cv.layer.cornerRadius = 8
        
        cv.translatesAutoresizingMaskIntoConstraints = false
        
        return cv
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! GeneralInfor
        cell.img.image = UIImage(named: imgName[indexPath.row])
        
        if indexPath.row == 0 {
            cell.lbl.text = job?.address
        } else if indexPath.row == 1 {
            cell.lbl.text = job?.workingType
        } else if indexPath.row == 2 {
            cell.lbl.text = job?.experienced
        } else if indexPath.row == 3 {
            cell.lbl.text = String(describing: (job?.salary)!)
        } else if indexPath.row == 4 {
            cell.lbl.text = job?.datePosted
        } else if indexPath.row == 5 {
            cell.lbl.text = job?.dateExpire
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

