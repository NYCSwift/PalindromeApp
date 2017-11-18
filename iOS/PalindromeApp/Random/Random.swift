//
//  Random.swift
//  Random
//
//  Created by Aferdita Muriqi on 11/17/17.
//  Copyright © 2017 DITA. All rights reserved.
//

import Foundation

extension Array {
  public var randomObject: Element!{
    if (self.count > 0) {
      let random = Int(arc4random_uniform(UInt32(self.count)))
      return self[random]
    }
    else {
      return nil
    }
  }
}
