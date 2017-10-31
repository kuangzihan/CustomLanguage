//
//  NSString+AttributedText.swift
//  FreshQiao2.0
//
//  Created by 邝子涵 on 2017/6/30.
//  Copyright © 2017年 邝子涵. All rights reserved.
//

import Foundation
import UIKit
extension String {
    /// 富文本带图片
    /// - Parameters:
    ///   - subText: 需要改变字符串
    ///   - subColor: 截取颜色
    ///   - font: 字体
    ///   - imageIndex: 图片位置
    ///   - image: 图片
    /// - Returns: 富文本
    func setAttributedWithImage(subText:String, subColor: UIColor, image:UIImage, font: UIFont = UIFont.systemFont(ofSize: 14), imageIndex:Int = 0, y:CGFloat = -3) -> NSAttributedString {
        
        let attributedString = NSMutableAttributedString(string: self)
        let mainStr = NSString(string: self)
        let loc = mainStr.range(of: subText).location
        let len = subText.characters.count
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: subColor, range: NSMakeRange(loc, len))
        attributedString.addAttribute(NSAttributedStringKey.font, value: font, range: NSMakeRange(loc, len))
        // 创建NSTextAttachment
        let attch = NSTextAttachment()
        // 设置图片
        attch.image = image
        // 设置图片大小
        attch.bounds = CGRect(x: 0, y: y, width: image.size.width, height: image.size.height)
        // 创建带有图片的富文本
        let str = NSAttributedString(attachment: attch)
        // 插入图片带第几位
        attributedString.insert(str, at: imageIndex)
        return attributedString
    }
    
    
    /// 富文本改变字体颜色
    /// - Parameters:
    ///   - subText: 截取文字
    ///   - subColor: 截取文字颜色
    ///   - font: 字体
    /// - Returns: 富文本
    func setAttributedWithText(subText:String, subColor:UIColor, font:UIFont = UIFont.systemFont(ofSize: 14)) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        let mainStr = NSString(string: self)
        let loc:Int  = mainStr.range(of: subText).location
        let len = subText.characters.count
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: subColor, range: NSMakeRange(loc, len))
        attributedString.addAttribute(NSAttributedStringKey.font, value: font, range: NSMakeRange(loc, len))
        return attributedString
    }
    
    /// 富文本加中划线
    /// - Parameters:
    ///   - subText: 截取文字
    ///   - font: 字体
    /// - Returns: 富文本
    func setAttributedUnderLineWithText(subText:String,subColor:UIColor,font:UIFont = UIFont.systemFont(ofSize: 14)) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        let mainStr = NSString(string: self)
        let loc:Int  = mainStr.range(of: subText).location
        let len = subText.characters.count
        attributedString.addAttribute(NSAttributedStringKey.strikethroughStyle, value:  NSNumber(value: 1), range: NSMakeRange(loc, len))
        attributedString.addAttribute(NSAttributedStringKey.baselineOffset, value: NSNumber(value: 1), range: NSMakeRange(loc, len))
        
        attributedString.addAttribute(NSAttributedStringKey.foregroundColor, value: subColor, range: NSMakeRange(loc, len))
        attributedString.addAttribute(NSAttributedStringKey.font, value: font, range: NSMakeRange(loc, len))
        return attributedString
    }
    
    
    func setAttributedFirstLineHead(_ firstLineHeadIndent: String) -> NSAttributedString {
        guard let firstLineHeadIndent = Float(firstLineHeadIndent) else { return NSMutableAttributedString(string: self) }
        let paragraph = NSMutableParagraphStyle()
        paragraph.firstLineHeadIndent = CGFloat(firstLineHeadIndent)
        let attribute = [NSAttributedStringKey.paragraphStyle: paragraph]
        let attributedString = NSMutableAttributedString(string: self, attributes: attribute)
        return attributedString
    }
}
