//
//  Data.swift
//  JobSeeking_App
//
//  Created by Thanh on 05/04/2018.
//  Copyright © 2018 Thanh. All rights reserved.
//

import UIKit

class Job: NSObject {
    var id: Int?
    var address: String?
    var companyName: String?
    var experienced: String?
    var salary: Int?
    var datePosted: String?
    var dateExpire: String?
    var workingType: String?
    var workingName: String?
    var jobDescription: String?
    var jobRequirement: String?
}

class Major: NSObject {
    var id: Int?
    var nameMajor: String?
    var jobs: [Job]?
    
    
    func setupJob(id: Int, address: String, companyName: String, experienced: String, salary: Int, datePosted: String,dateExpire: String, workingType: String, workingName: String, jobDescription: String, jobRequirement: String) -> Job {
        let job = Job()
        job.id = id
        job.address = address
        job.companyName = companyName
        job.experienced = experienced
        job.salary = salary
        job.datePosted = datePosted
        job.dateExpire = dateExpire
        job.workingType = workingType
        job.workingName = workingName
        job.jobDescription = jobDescription
        job.jobRequirement = jobRequirement
        
        return job
    }
    
    static func Majors() -> [Major] {
        let majorCNTT = Major()
        majorCNTT.id = 1
        majorCNTT.nameMajor = "CNTT - Phần mềm"
        
        var jobsCNTT = [Job]()
        
        let jobCNTT1 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "1 year", salary: 200, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Part time", workingName: "IOS developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT1)
        
        let jobCNTT2 = majorCNTT.setupJob(id: 2, address: "Ha Noi", companyName: "CTY TNHH MISA", experienced: "2 year", salary: 500, datePosted: "13/05/2018", dateExpire: "13/06/2018", workingType: "Full time", workingName: "Python/PHP/.Net Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT2)
        
        let jobCNTT3 = majorCNTT.setupJob(id: 3, address: "Ho Chi Minh", companyName: "FSOFT", experienced: "2 year", salary: 350, datePosted: "13/05/2018", dateExpire: "13/06/2018", workingType: "Part time", workingName: "IOS Swift/Objective-C Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT3)
        
        let jobCNTT4 = majorCNTT.setupJob(id: 4, address: "Da Nang", companyName: "Cty TNHH 1 member", experienced: "Non-experienced", salary: 200, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Part time", workingName: "PHP Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT4)
        
        let jobCNTT5 = majorCNTT.setupJob(id: 5, address: "Ho Chi Minh", companyName: "Cty TNHH 2 members", experienced: "Non-experienced", salary: 250, datePosted: "01/03/2018", dateExpire: "01/06/2018", workingType: "Part time", workingName: "PHP,.Net Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT5)
        
        let jobCNTT6 = majorCNTT.setupJob(id: 6, address: "Ha Noi", companyName: "Cty TNHH 3 member", experienced: "4 years", salary: 1000, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Test manager", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT6)
        
        let jobCNTT7 = majorCNTT.setupJob(id: 7, address: "Ha Noi", companyName: "Cty TNHH 4 members", experienced: "2 years", salary: 500, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Mobile Developer(Ios/ Android)", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT7)
        
        let jobCNTT8 = majorCNTT.setupJob(id: 8, address: "Ho Chi Minh", companyName: "Cty TNHH 5 members", experienced: " 2 years", salary: 600, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Lap trinh vien Java", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT8)
        
        let jobCNTT9 = majorCNTT.setupJob(id: 9, address: "Da Nag", companyName: "Cty TNHH 6 members", experienced: "1 years", salary: 300, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Part time", workingName: "Lap trinh vien IOS Swift", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT9)
        
        let jobCNTT10 = majorCNTT.setupJob(id: 10, address: "Thanh Hoa", companyName: "Cty TNHH 7 members", experienced: "1 years", salary: 400, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: ".Net/PHP Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT10)
        
        let jobCNTT11 = majorCNTT.setupJob(id: 11, address: "Ha Noi", companyName: "Cty TNHH 7 members", experienced: "3 years", salary: 1000, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "IOS Project Leader Up To 30M", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT11)
        
        let jobCNTT12 = majorCNTT.setupJob(id: 12, address: "Ho Chi Minh", companyName: "Cty TNHH 5 members", experienced: " 2 years", salary: 600, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Android Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT12)
        
        let jobCNTT13 = majorCNTT.setupJob(id: 13, address: "Ha Noi", companyName: "Cty TNHH 10 members", experienced: "1 years", salary: 700, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "C/C++ Team Leader", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT13)
        
        let jobCNTT14 = majorCNTT.setupJob(id: 14, address: "Ninh Binh", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 400, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Lap trinh vien WEB", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT14)
        
        let jobCNTT15 = majorCNTT.setupJob(id: 15, address: "Ha Noi", companyName: "Cty TNHH 12 members", experienced: "2 years", salary: 400, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Lap trinh vien IOS Mobile Apps", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT15)
        
        let jobCNTT16 = majorCNTT.setupJob(id: 16, address: "Ho Chi Minh", companyName: "Cty TNHH 13 members", experienced: "2 years", salary: 600, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Lap trinh vien WEB", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT16)
        
        let jobCNTT17 = majorCNTT.setupJob(id: 17, address: "Ha Noi", companyName: "Cty TNHH 14 members", experienced: "2 years", salary: 450, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "IOS Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT17)
        
        let jobCNTT18 = majorCNTT.setupJob(id: 18, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 400, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Lap trinh vien WEB", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT18)
        
        let jobCNTT19 = majorCNTT.setupJob(id: 19, address: "Ha Noi", companyName: "Cty TNHH 15 members", experienced: "2 years", salary: 550, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Lap trinh vien PHP", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT19)
        
        let jobCNTT20 = majorCNTT.setupJob(id: 20, address: "Ho Chi Minh", companyName: "Cty TNHH 69 members", experienced: "1 years", salary: 300, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Part time", workingName: "Lap trinh vien Java/JavaScript", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT20)
        
        let jobCNTT21 = majorCNTT.setupJob(id: 21, address: "Thanh Hoa", companyName: "Cty TNHH 19 members", experienced: "2 years", salary: 600, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Web Apps Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT21)
        
        let jobCNTT22 = majorCNTT.setupJob(id: 22, address: "Ho Chi Minh", companyName: "Cty TNHH 100 members", experienced: "1 years", salary: 200, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Part time", workingName: "Python Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT22)
        
        let jobCNTT23 = majorCNTT.setupJob(id: 23, address: "Ninh Binh", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 400, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Lap trinh vien Python", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT23)
        
        let jobCNTT24 = majorCNTT.setupJob(id: 24, address: "Da Nang", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 350, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Lap trinh vien .Net", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT24)
        
        let jobCNTT25 = majorCNTT.setupJob(id: 25, address: "Ninh Binh", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 200, datePosted: "23/05/2018", dateExpire: "23/06/2018", workingType: "Part time", workingName: "PHP Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT25)
        
        let jobCNTT26 = majorCNTT.setupJob(id: 26, address: "Thanh Hoa", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 400, datePosted: "23/09/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "PHP/Python Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT26)
        
        let jobCNTT27 = majorCNTT.setupJob(id: 27, address: "Bac Giang", companyName: "Cty TNHH 1001 members", experienced: "2 years", salary: 200, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Part time", workingName: ".NET/ PHP/ Python", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT27)
        
        let jobCNTT28 = majorCNTT.setupJob(id: 28, address: "Ninh Binh", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 500, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "DataBase Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT28)
        
        let jobCNTT29 = majorCNTT.setupJob(id: 29, address: "Ninh Binh", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 700, datePosted: "23/03/2018", dateExpire: "23/04/2018", workingType: "Full time", workingName: "Project Manager", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT29)
        
        let jobCNTT30 = majorCNTT.setupJob(id: 30, address: "Ha Noi", companyName: "Cty TNHH 101 members", experienced: "2 years", salary: 800, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Big Data", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT30)
        
        let jobCNTT31 = majorCNTT.setupJob(id: 31, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "4 years", salary: 1000, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "IOT/ AI", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT31)
        
        let jobCNTT32 = majorCNTT.setupJob(id: 32, address: "Ha Noi", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 500, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Java Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT32)
        
        let jobCNTT33 = majorCNTT.setupJob(id: 33, address: "Ha Noi", companyName: "Cty TNHH 11 members", experienced: "4 years", salary: 700, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Senior Java Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT33)
        
        let jobCNTT34 = majorCNTT.setupJob(id: 34, address: "Ha Noi", companyName: "Cty TNHH 01 members", experienced: "1 years", salary: 500, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Java/C# Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT34)
        
        let jobCNTT35 = majorCNTT.setupJob(id: 35, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 300, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Part time", workingName: "Lap trinh vien Java", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT35)
        
        let jobCNTT36 = majorCNTT.setupJob(id: 36, address: "Ha Noi", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 200, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Part time", workingName: "Junior / Fresher Java Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT36)
        
        let jobCNTT37 = majorCNTT.setupJob(id: 37, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 700, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Java Techical Leader", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT37)
        
        let jobCNTT38 = majorCNTT.setupJob(id: 38, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 400, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Android Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT38)
        
        let jobCNTT39 = majorCNTT.setupJob(id: 39, address: "Hai Phong", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 350, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "C/C++ Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT39)
        
        let jobCNTT40 = majorCNTT.setupJob(id: 39, address: "Hue", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 300, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "React Native Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT40)
        
        let jobCNTT41 = majorCNTT.setupJob(id: 39, address: "Ha Noi", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 400, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "IOS/Android Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT41)
        
        let jobCNTT42 = majorCNTT.setupJob(id: 39, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 350, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Web Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT42)
        
        let jobCNTT43 = majorCNTT.setupJob(id: 39, address: "Ha Noi", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 350, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Mobile Developer (IOS/Android)", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT43)
        
        let jobCNTT44 = majorCNTT.setupJob(id: 39, address: "Thanh Hoa", companyName: "Cty TNHH 11 members", experienced: "1 years", salary: 300, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "PHP/Python Developers", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT44)
        
        let jobCNTT45 = majorCNTT.setupJob(id: 39, address: "Quang Ngai", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 500, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Project Manager Mobile App", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT45)
        
        let jobCNTT46 = majorCNTT.setupJob(id: 39, address: "Ninh Binh", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 400, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Web developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT46)
        
        let jobCNTT47 = majorCNTT.setupJob(id: 39, address: "Ha Noi", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 500, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "React Native Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT47)
        
        let jobCNTT48 = majorCNTT.setupJob(id: 39, address: "Phu Quoc", companyName: "Cty TNHH 11 members", experienced: "2 years", salary: 350, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Mobile App", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT48)
        
        let jobCNTT49 = majorCNTT.setupJob(id: 39, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 600, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "C/C++/C# Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT49)
        
        let jobCNTT50 = majorCNTT.setupJob(id: 39, address: "Ha Noi", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 700, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "C#/C/C++ Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT50)
        
        let jobCNTT51 = majorCNTT.setupJob(id: 39, address: "Ha Noi", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 800, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Java/JavaScript developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT51)
        
        let jobCNTT52 = majorCNTT.setupJob(id: 39, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "4 years", salary: 1000, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Project Manager", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT52)
        
        let jobCNTT53 = majorCNTT.setupJob(id: 39, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "3 years", salary: 600, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "3D Game Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT53)
        
        let jobCNTT54 = majorCNTT.setupJob(id: 39, address: "Ho Chi Minh", companyName: "Cty TNHH 11 members", experienced: "2 years", salary: 500, datePosted: "03/03/2018", dateExpire: "03/05/2018", workingType: "Full time", workingName: "Fresher PHP Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        jobsCNTT.append(jobCNTT54)
        
        let jobCNTT55 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Backend Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT55)
        
        let jobCNTT56 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 550, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Fontend Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT56)
        
        let jobCNTT57 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 400, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Web Designer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT57)
        
        let jobCNTT58 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 400, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Backend Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT58)
        
        let jobCNTT59 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "4 year", salary: 1500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Kỹ sư cầu nối Nhật Bản", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT59)
        
        let jobCNTT60 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Senior Full Stack dev", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT60)
        
        let jobCNTT61 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "2 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Fresher Dev (NodeJS/Python)", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT61)
        
        let jobCNTT62 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 800, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "PHP/JAVA/NODEJS Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT62)
        
        let jobCNTT63 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 900, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "NodeJS Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT63)
        
        let jobCNTT64 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 700, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "React Native/ JS Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT64)
        
        let jobCNTT65 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "2 year", salary: 650, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Fresher ReactJS Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT65)
        
        let jobCNTT66 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Java Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT66)
        
        
        let jobCNTT67 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "2 year", salary: 1000, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Senior Java Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT67)
        
        let jobCNTT68 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Java/C# Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT68)
        
        let jobCNTT69 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "2 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "JavaScript Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT69)
        
        let jobCNTT70 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "2 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "PHP/JAVA/NODEJS Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT70)
        
        let jobCNTT71 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "2 year", salary: 700, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Lập trình viên Java/.NET", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT71)
        
        let jobCNTT72 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "2 year", salary: 650, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Font End JavaScript Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT72)
        
        let jobCNTT73 = majorCNTT.setupJob(id: 1, address: "Ho Chi Minh", companyName: "COWELL CO.", experienced: "4 year", salary: 1200, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Java Technical Leader", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT73)
        
        let jobCNTT74 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "2 year", salary: 800, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Full-Stack Web Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT74)
        
        let jobCNTT75 = majorCNTT.setupJob(id: 1, address: "Ha Noi", companyName: "COWELL CO.", experienced: "2 year", salary: 900, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Senior IOS Developer", jobDescription: "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng.", jobRequirement: "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n")
        
        jobsCNTT.append(jobCNTT75)
        
        
        
        
        majorCNTT.jobs = jobsCNTT
        
        
        // Economic Major
        
        let majorEconomic = Major()
        majorEconomic.id = 2
        majorEconomic.nameMajor = "Kế toán / Kiểm toán"
        
        var jobsEco = [Job]()
        
        let jobEco1 = majorEconomic.setupJob(id: 1, address: "Ha Noi", companyName: "Công ty TNHH Quản Lý Phát Triển MK", experienced: "1 year", salary: 200, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Part time", workingName: "KẾ TOÁN TRƯỞNG", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco1)
        
        let jobEco2 = majorEconomic.setupJob(id: 2, address: "Ha Noi", companyName: "Công ty TNHH CN GIẦY AURORA VIỆT NAM", experienced: "2 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Nhân Viên Kế Toán", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco2)
        
        let jobEco3 = majorEconomic.setupJob(id: 3, address: "Ho Chi Minh", companyName: "Công ty TNHH CJ VINA Agri", experienced: "3 year", salary: 250, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Part time", workingName: "Kế toán tổng hợp", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco3)
        
        let jobEco4 = majorEconomic.setupJob(id: 4, address: "Ha Noi", companyName: "Công ty TNHH Hồng Minh Phúc", experienced: "2 year", salary: 200, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Part time", workingName: "Kế toán tổng hợp", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco4)
        
        let jobEco5 = majorEconomic.setupJob(id: 5, address: "Ho Chi Minh", companyName: "LOTUS GROUP", experienced: "2 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Kế Toán Kho", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco5)
        
        let jobEco6 = majorEconomic.setupJob(id: 6, address: "Ho Chi Minh", companyName: "Harvest VietNam", experienced: "3 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Kế Toán Tổng Hợp", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco6)
        
        let jobEco7 = majorEconomic.setupJob(id: 7, address: "Da Nang", companyName: "Viet Thai International", experienced: "1 year", salary: 450, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Part time", workingName: "KẾ TOÁN XUẤT NHẬP KHẨU", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco7)
        
        let jobEco8 = majorEconomic.setupJob(id: 8, address: "Ha Noi", companyName: "Công ty Cổ Phần Kovic Việt Nam", experienced: "2 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "KẾ TOÁN TRƯỞNG", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco8)
        
        let jobEco9 = majorEconomic.setupJob(id: 9, address: "Ho Chi Minh", companyName: "CareerBuilder", experienced: "3 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "KẾ TOÁN TỔNG HỢP", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco9)
        
        let jobEco10 = majorEconomic.setupJob(id: 10, address: "Ho Chi Minh", companyName: "Công Ty Cổ Phần Bánh Lubico", experienced: "2 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "KẾ TOÁN Tổng HỢP", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco10)
        
        let jobEco11 = majorEconomic.setupJob(id: 11, address: "Ho Chi Minh", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Nhân Viên Tổng Vụ", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco11)
        
        let jobEco12 = majorEconomic.setupJob(id: 11, address: "Ha Noi", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 550, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Kế Toán Thuế", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco12)
        
        let jobEco13 = majorEconomic.setupJob(id: 11, address: "Ha Noi", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 800, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Kế Toán Công Nợ", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco13)
        
        let jobEco14 = majorEconomic.setupJob(id: 11, address: "Ho Chi Minh", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 550, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Nhân Viên Tổng Vụ", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco14)
        
        let jobEco15 = majorEconomic.setupJob(id: 11, address: "Ha Noi", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 900, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Chuyên Viên Kiểm Soát Tài Chính", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco15)
        
        let jobEco16 = majorEconomic.setupJob(id: 11, address: "Tien Giang", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 550, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Trợ Lý Kế Toán", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco16)
        
        let jobEco17 = majorEconomic.setupJob(id: 11, address: "Ho Chi Minh", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 750, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Nhân Viên Kế Toán Thuế", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco17)
        
        let jobEco18 = majorEconomic.setupJob(id: 11, address: "Ha Noi", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Kế Toán Thuế", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsEco.append(jobEco18)
        
        majorEconomic.jobs = jobsEco
        
        // Du lịch Major
        let majorAdventure = Major()
        majorAdventure.id = 3
        majorAdventure.nameMajor = "Du lịch"
        
        var jobsAdven = [Job]()
        
        let jobAdven1 = majorAdventure.setupJob(id: 1, address: "Ho Chi Minh", companyName: "4U TOURS", experienced: "1 year", salary: 400, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Nhân viên kinh doanh", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven1)
        
        let jobAdven2 = majorEconomic.setupJob(id: 2, address: "Ha Noi", companyName: "Công ty TNHH CN GIẦY AURORA VIỆT NAM", experienced: "2 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Nhân Viên Kế Toán", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven2)
        
        let jobAdven3 = majorEconomic.setupJob(id: 3, address: "Ho Chi Minh", companyName: "Công ty TNHH CJ VINA Agri", experienced: "3 year", salary: 250, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Part time", workingName: "Kế toán tổng hợp", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven3)
        
        let jobAdven4 = majorEconomic.setupJob(id: 4, address: "Ha Noi", companyName: "Công ty TNHH Hồng Minh Phúc", experienced: "2 year", salary: 200, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Part time", workingName: "Kế toán tổng hợp", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven4)
        
        let jobAdven5 = majorEconomic.setupJob(id: 5, address: "Ho Chi Minh", companyName: "LOTUS GROUP", experienced: "2 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Kế Toán Kho", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven5)
        
        let jobAdven6 = majorEconomic.setupJob(id: 6, address: "Ho Chi Minh", companyName: "Harvest VietNam", experienced: "3 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Kế Toán Tổng Hợp", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven6)
        
        let jobAdven7 = majorEconomic.setupJob(id: 7, address: "Da Nang", companyName: "Viet Thai International", experienced: "1 year", salary: 450, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Part time", workingName: "KẾ TOÁN XUẤT NHẬP KHẨU", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven7)
        
        let jobAdven8 = majorEconomic.setupJob(id: 8, address: "Ha Noi", companyName: "Công ty Cổ Phần Kovic Việt Nam", experienced: "2 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "KẾ TOÁN TRƯỞNG", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven8)
        
        let jobAdven9 = majorEconomic.setupJob(id: 9, address: "Ho Chi Minh", companyName: "CareerBuilder", experienced: "3 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "KẾ TOÁN TỔNG HỢP", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven9)
        
        let jobAdven10 = majorEconomic.setupJob(id: 10, address: "Ho Chi Minh", companyName: "Công Ty Cổ Phần Bánh Lubico", experienced: "2 year", salary: 600, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "KẾ TOÁN Tổng HỢP", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven10)
        
        let jobAdven11 = majorEconomic.setupJob(id: 11, address: "Ho Chi Minh", companyName: "Công Ty TNHH Sansei", experienced: "1 year", salary: 500, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Nhân Viên Tổng Vụ", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsAdven.append(jobAdven11)
        
        majorAdventure.jobs = jobsAdven
        
        // Dien tu vien thong
        let majorDTVT = Major()
        majorDTVT.id = 4
        majorDTVT.nameMajor = "Điện tử viễn thông"
        
        var jobsDTVT = [Job]()
        
        let jobDtvt1 = majorAdventure.setupJob(id: 1, address: "Ho Chi Minh", companyName: "4U TOURS", experienced: "1 year", salary: 400, datePosted: "17/05/2018", dateExpire: "17/06/2018", workingType: "Full time", workingName: "Nhân viên kinh doanh", jobDescription: "1. Tổ chức sắp xếp hệ thống bộ máy kế toán của khối văn phòng công ty một cách khoa học, tiết kiệm, hiệu quả.\n2. Phân công nghiêpj vụ cho từng nhân viên trong bộ phận và hướng dẫn các kế toán viên thực hiện các nghiệp vụ thuộc phần hành của mình.", jobRequirement: "1. Nắm vững cách hoạch toán tất cả các nghiệp vụ kinh tế phát sinh, nắm vững các quy định về thuế, tài chính, các chính sách chế độ khác hiện hành..\n2. Có chứng chỉ kế toán trưởng.")
        
        jobsDTVT.append(jobDtvt1)
        
        majorDTVT.jobs = jobsDTVT
        
        return [majorCNTT, majorEconomic, majorAdventure, majorDTVT]
        
    }
}


