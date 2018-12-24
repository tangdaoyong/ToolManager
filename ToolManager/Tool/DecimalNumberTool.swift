//
//  DecimalNumberTool.swift
//  ToolManager
//
//  Created by 唐道勇 on 2018/12/21.
//  Copyright © 2018 唐道勇. All rights reserved.
//

import UIKit

/// 精算类
public final class DecimalNumberTool: NSObject {
    
    /*
     public enum RoundingMode : UInt {
     /// 四舍五入
     case plain
     /// 向下取整
     case down
     /// 向上取整
     case up
     /// 四舍五入的基础上，加上末尾数为5时，变成偶数的规则
     case bankers
     }
     */
    
    /// 精算【+】
    ///
    /// - Parameters:
    ///   - left: 加数
    ///   - right: 加数
    ///   - roundingMode: 舍入方式
    ///   - scale: 小数点儿后舍入值的位数
    ///   - exact: 精度错误处理
    ///   - overflow: 溢出错误处理
    ///   - underflow: 下溢错误处理
    ///   - divideByZero: 除以0的错误处理
    /// - Returns: 精算结果
    public static func add(_ left:String, right:String, roundingMode: NSDecimalNumber.RoundingMode = .plain, scale: Int16 = 2, raiseOnExactness exact: Bool = false, raiseOnOverflow overflow: Bool = false, raiseOnUnderflow underflow: Bool = false, raiseOnDivideByZero divideByZero: Bool = true) ->String {

        let leftDecimal = NSDecimalNumber(string: left)
        let rightDecimal = NSDecimalNumber(string: right)
        
        let decimalHandler = NSDecimalNumberHandler.init(roundingMode: roundingMode, scale: scale, raiseOnExactness: exact, raiseOnOverflow: overflow, raiseOnUnderflow: underflow, raiseOnDivideByZero: divideByZero)
        let addDecimal = leftDecimal.adding(rightDecimal, withBehavior: decimalHandler)
//        let subtractDecimal = leftDecimal.subtracting(rightDecimal, withBehavior: decimalHandler)
//        let multiplyDecimal = leftDecimal.multiplying(by: rightDecimal, withBehavior: decimalHandler)
//        let dividDecimal = leftDecimal.dividing(by: rightDecimal, withBehavior: decimalHandler)
        
        return addDecimal.stringValue
    }
}

// MARK: - prefix



// MARK: - infix

infix operator *+*


/// 精算【*+*】
///
/// - Parameters:
///   - left: 左数
///   - right: 右数
/// - Returns: 精算结果
func *+*(_ left:String, right:String) ->String? {

    guard let leftDecimal = Decimal(string: left) else {
        return nil
    }
    guard let rightDecimal = Decimal(string: right) else {
        return nil
    }
    let addDecimal = leftDecimal.advanced(by: rightDecimal)
    return addDecimal.description
}

// MARK: - postfix

