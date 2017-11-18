//
//  ViewController.swift
//  Palindrome
//
//  Created by Aferdita Muriqi on 11/17/17.
//  Copyright © 2017 DITA. All rights reserved.
//

import UIKit
import Palindrome
import Random

class ViewController: UIViewController {
  
  @IBOutlet weak var wordField: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var resultImageView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    resultLabel.text = nil
  }
  
  @IBAction func checkPalindrome(_ sender: AnyObject) {
    let palindrome = isPalindrome(wordField.text!)
    if palindrome.status
    {
      resultLabel.text = "yes, \(palindrome.result) is a palindrome"
      resultImageView.image = UIImage(named: "yes")
    }
    else
    {
      resultLabel.text = "no, \(palindrome.result) is not a palindrome"
      resultImageView.image = UIImage(named: "no")
    }
    wordField.resignFirstResponder()
    
    print([1,2,3,4,5].randomObject)

  }
  
}
