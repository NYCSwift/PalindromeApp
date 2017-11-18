//
//  Palindrome.swift
//  Palindrome
//
//  Created by Aferdita Muriqi on 11/17/17.
//  Copyright © 2017 DITA. All rights reserved.
//

import Foundation

public func isPalindrome(_ testString:String) -> (status:Bool,result:String) {
  let charSet = CharacterSet.alphanumerics.inverted
  let myAlphaNumericString = testString.components(separatedBy: charSet).joined(separator: "").uppercased() as NSString
  
  var left = 0
  var right = myAlphaNumericString.length - 1
  
  while left < right
  {
    if myAlphaNumericString.character(at: left) != myAlphaNumericString.character(at: right)
    {
      return (false, myAlphaNumericString as String)
    }
    
    left += 1
    right -= 1
  }
  
  return (true,myAlphaNumericString as String)
}
