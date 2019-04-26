//
//  ViewController.swift
//  puzzle4x4
//
//  Created by Alicia Cisneros  on 4/24/19.
//  Copyright © 2019 Alicia Cisneros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tablero = [[Int]] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewButtons()
        // Do any additional setup after loading the view.
    }
    
    func viewButtons()   {
        var button = UIButton()
        var xIn = 18
        var yIn = 200
        var value = 0
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        let screenWidth = screenSize.width
        
        let wIn = (screenWidth - 36) / 4
        
        var nums = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
        
        for _ in 0 ..< 4{
            for _ in 0 ..< 4{
                let arrayKey = Int(arc4random_uniform(UInt32(nums.count)))
                value = nums[arrayKey]
                button = UIButton(frame: CGRect(x:xIn , y: yIn , width: Int(wIn), height: Int(wIn)))
                button.backgroundColor = .blue
                button.tag = value
                if(value != 3){
                    view.addSubview(button)
                }
                button.addTarget(self, action: #selector(ViewController.handleButton(_:)), for: .touchUpInside)
               // buttonArray.append(button)
                button.setTitle(String(value), for: .normal)
                tablero.append([value])
                xIn = xIn + Int(wIn) + 2
                nums.remove(at: arrayKey)

            }
            xIn = 18
            yIn = yIn + Int(wIn) + 2
        }
    }
    
    @objc func handleButton(_ sender: UIButton) {
        
    }


}

