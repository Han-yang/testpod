

//
//  Dev01Test.swift
//  podDev01
//
//  Created by yf on 2020/8/3.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import mainpod
import SnapKit
public class Dev01Test:UIView {
    public func test() {
        let m = MainTest()
        m.test()
        print(self.classForCoder,"--++")
        Dev01TestAdd().test()
        self.snp_makeConstraints { (m) in
            m.top.equalTo(0)
        }
    }
}
