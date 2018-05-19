//
//  MajorCell.swift
//  JobSeeking_App
//
//  Created by Thanh on 05/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

class MajorCell: UICollectionViewCell {
    
    var major: Major? {
        didSet {
            lbl.text = "\(String(describing: (major?.nameMajor)!)) (\(String(describing: (major?.jobs?.count)!)))"
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let lbl: UILabel = {
        let lbl = UILabel()
        //        lbl.text = "CNTT - Phan mem"
        //        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        
        return lbl
    }()
    
    let line: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        
        return line
    }()
    
    func setupCell() {
        addSubview(lbl)
        addSubview(line)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": line]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0][v1(1)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl, "v1": line]))
    }
}

