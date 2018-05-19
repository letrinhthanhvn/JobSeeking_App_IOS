//
//  Cell.swift
//  JobSeeking_App
//
//  Created by Thanh on 03/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

class Cell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let jobTxtField: UITextField = {
        let jobTxt = UITextField()
        
        
        jobTxt.translatesAutoresizingMaskIntoConstraints = false
        
        return jobTxt
    }()
    
    let locationTxtField: UITextField = {
        let locationTxt = UITextField()
        locationTxt.backgroundColor = .clear
        locationTxt.isUserInteractionEnabled = false
        
        locationTxt.translatesAutoresizingMaskIntoConstraints = false
        
        return locationTxt
    }()
    
    let salaryTxtField: UITextField = {
        let salaryTxt = UITextField()
        salaryTxt.backgroundColor = .clear
        salaryTxt.isUserInteractionEnabled = false
        //        jobTxt.borderStyle = .roundedRect
        
        salaryTxt.translatesAutoresizingMaskIntoConstraints = false
        
        return salaryTxt
    }()
    
    let workTxtField: UITextField = {
        let workTxt = UITextField()
        workTxt.backgroundColor = .clear
        workTxt.isUserInteractionEnabled = false
        //        jobTxt.borderStyle = .roundedRect
        
        workTxt.translatesAutoresizingMaskIntoConstraints = false
        
        return workTxt
    }()
    
    let lbl: UILabel = {
        let lbl = UILabel()
        
        
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        return lbl
    }()
    
    let img: UIImageView = {
        let img = UIImageView()
        //        img.backgroundColor = .blue
        img.contentMode = .scaleAspectFit
        img.image = #imageLiteral(resourceName: "dropdownIcon")
        
        img.translatesAutoresizingMaskIntoConstraints = false
        
        return img
    }()
    
    func setupCell() {
        addSubview(jobTxtField)
        addSubview(img)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-2-[v0]-2-[v1(30)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobTxtField, "v1": img]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[v0]-2-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobTxtField]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v0]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": img]))
    }
}

