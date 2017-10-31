//
//  ViewController.swift
//  多语言切换
//
//  Created by 邝子涵 on 2017/10/31.
//  Copyright © 2017年 个人工作室. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    // MARK: - appdelgate
    lazy var appdelegate: AppDelegate = {
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        return appdelegate
    }()
    
    // MARK: - label
    lazy var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 75/2, y: 100, width: 300, height: 40))
        label.textAlignment = .center
        label.text = "点击按钮查看效果"
        return label
    }()
    
    // MARK: - englishBtn
    lazy var englishBtn: UIButton = {
        let englishBtn = UIButton(type: UIButtonType.custom)
        englishBtn.setTitleColor(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), for: .normal)
        englishBtn.setTitle("English Language", for: .normal)
        englishBtn.frame = CGRect(x: 175/2, y: 200, width: 200, height: 40)
        englishBtn.addTarget(self, action: #selector(englishBtnClick), for: .touchUpInside)
        return englishBtn
    }()
    
    // MARK: - chineseSimpleBtn
    lazy var chineseSimpleBtn: UIButton = {
        let chineseSimpleBtn = UIButton(type: UIButtonType.custom)
        chineseSimpleBtn.setTitleColor(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), for: .normal)
        chineseSimpleBtn.setTitle("简体中文", for: .normal)
        chineseSimpleBtn.frame = CGRect(x: 175/2, y: 300, width: 200, height: 40)
        chineseSimpleBtn.addTarget(self, action: #selector(chineseSimpleBtnClick), for: .touchUpInside)
        return chineseSimpleBtn
    }()
    
    // MARK: - chineseTWBtn
    lazy var chineseTWBtn: UIButton = {
        let chineseTWBtn = UIButton(type: UIButtonType.custom)
        chineseTWBtn.setTitleColor(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), for: .normal)
        chineseTWBtn.setTitle("繁体中文", for: .normal)
        chineseTWBtn.frame = CGRect(x: 175/2, y: 400, width: 200, height: 40)
        chineseTWBtn.addTarget(self, action: #selector(chineseTWBtnClick), for: .touchUpInside)
        return chineseTWBtn
    }()
    
    // MARK: - chineseTWBtn
    lazy var indonesiaBtn: UIButton = {
        let indonesiaBtn = UIButton(type: UIButtonType.custom)
        indonesiaBtn.setTitleColor(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), for: .normal)
        indonesiaBtn.setTitle("Bahasa Indonesia", for: .normal)
        indonesiaBtn.frame = CGRect(x: 175/2, y: 500, width: 200, height: 40)
        indonesiaBtn.addTarget(self, action: #selector(indonesiaBtnClick), for: .touchUpInside)
        return indonesiaBtn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        view.addSubview(englishBtn)
        view.addSubview(chineseSimpleBtn)
        view.addSubview(chineseTWBtn)
        view.addSubview(indonesiaBtn)
        
        
    }
    
    
    @objc func englishBtnClick() {
        CustomLanguage.share.lan = "en"
        label.attributedText = CustomLanguage.share.showText(key: "showText").setAttributedWithImage(subText: CustomLanguage.share.showText(key: "showText"), subColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), image: UIImage(named: CustomLanguage.share.showText(key: "image"))!)
    }
    
    
    @objc func chineseSimpleBtnClick() {
        CustomLanguage.share.lan = "zh-Hans"
        label.attributedText = CustomLanguage.share.showText(key: "showText").setAttributedWithImage(subText: CustomLanguage.share.showText(key: "showText"), subColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), image: UIImage(named: CustomLanguage.share.showText(key: "image"))!)
    }
    
    @objc func chineseTWBtnClick() {
        CustomLanguage.share.lan = "zh-Hant"
        label.attributedText = CustomLanguage.share.showText(key: "showText").setAttributedWithImage(subText: CustomLanguage.share.showText(key: "showText"), subColor: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), image: UIImage(named: CustomLanguage.share.showText(key: "image"))!)
    }
    
    @objc func indonesiaBtnClick() {
        CustomLanguage.share.lan = "id"
        label.attributedText = CustomLanguage.share.showText(key: "showText").setAttributedWithImage(subText: CustomLanguage.share.showText(key: "showText"), subColor: #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1), image: UIImage(named: CustomLanguage.share.showText(key: "image"))!)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

