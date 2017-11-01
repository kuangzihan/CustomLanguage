//
//  CustomLanguage.swift
//  多语言切换
//
//  Created by 邝子涵 on 2017/10/31.
//  Copyright © 2017年 个人工作室. All rights reserved.
//

import UIKit

class CustomLanguage: NSObject {
    
    //单例
    static let share = CustomLanguage()
    // 国家语言代码
    var lan = ""
    
    func showText(key: String) -> String {
        // 查找对应国家语言代码的路径
        guard let path = Bundle.main.path(forResource: lan, ofType: "lproj") else { return "" }
        // 通过路径在CustomLacation语言文件中查找对应key的字符串
        guard let bundle = Bundle(path: path)?.localizedString(forKey: key, value: nil, table: "CustomLacation") else { return "" }
        return bundle
    }
}
