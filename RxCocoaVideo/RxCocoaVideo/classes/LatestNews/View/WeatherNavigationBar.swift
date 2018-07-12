//
//  WeatherNavigationBar.swift
//  RxCocoaVideo
//
//  Created by 胡涛 on 2018/7/11.
//  Copyright © 2018年 胡涛. All rights reserved.
//

import UIKit

class WeatherNavigationBar: UIView,NibLoadable {
    var weatherModel = WeatherModel(){
        didSet{
            icon.setImage( UIImage(named: weatherModel.iconStr), for: .normal)
            city.setTitle(weatherModel.cityName, for: .normal)
            temprature.setTitle(weatherModel.temprature, for: .normal)
        }
    }
    @IBOutlet var icon: UIButton!
    @IBOutlet var city: UIButton!
    @IBOutlet var temprature: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
    }
    
    /// 固有的大小
    override var intrinsicContentSize: CGSize {
        return UILayoutFittingExpandedSize
    }
}
