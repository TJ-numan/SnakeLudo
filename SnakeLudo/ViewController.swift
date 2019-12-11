//
//  ViewController.swift
//  SnakeLudo
//
//  Created by Abdullah Al Numan(AAN) on 12/8/19.
//  Copyright © 2019 Abdullah Al Numan(AAN). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var im36: UIImageView!
    @IBOutlet weak var im35: UIImageView!
    @IBOutlet weak var im34: UIImageView!
    @IBOutlet weak var im33: UIImageView!
    @IBOutlet weak var im32: UIImageView!
    @IBOutlet weak var im31: UIImageView!
    @IBOutlet weak var im30: UIImageView!
    @IBOutlet weak var im29: UIImageView!
    @IBOutlet weak var im28: UIImageView!
    @IBOutlet weak var im27: UIImageView!
    @IBOutlet weak var im26: UIImageView!
    @IBOutlet weak var im25: UIImageView!
    @IBOutlet weak var im24: UIImageView!
    @IBOutlet weak var im23: UIImageView!
    @IBOutlet weak var im22: UIImageView!
    @IBOutlet weak var im21: UIImageView!
    @IBOutlet weak var im20: UIImageView!
    @IBOutlet weak var im19: UIImageView!
    @IBOutlet weak var im18: UIImageView!
    @IBOutlet weak var im17: UIImageView!
    @IBOutlet weak var im16: UIImageView!
    @IBOutlet weak var im15: UIImageView!
    @IBOutlet weak var im14: UIImageView!
    @IBOutlet weak var im13: UIImageView!
    @IBOutlet weak var im12: UIImageView!
    @IBOutlet weak var im11: UIImageView!
    @IBOutlet weak var im10: UIImageView!
    @IBOutlet weak var im09: UIImageView!
    @IBOutlet weak var im08: UIImageView!
    @IBOutlet weak var im07: UIImageView!
    @IBOutlet weak var im06: UIImageView!
    @IBOutlet weak var im05: UIImageView!
    @IBOutlet weak var im04: UIImageView!
    @IBOutlet weak var im03: UIImageView!
    @IBOutlet weak var im02: UIImageView!
    @IBOutlet weak var im01: UIImageView!
    
    @IBOutlet weak var guti: UIImageView!
    var score = 0, r =  0, previus = 0
    var isPlayerActive = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func roll(_ sender: Any) {
        
        r = Int.random(in: 1...6)
        
        print( r )
        previus = score
        if r == 1 {
            isPlayerActive = true
        }
        if isPlayerActive
        {
            let temp = score + r
            print(score)
            if temp < 36 {
                score += r
                print ("score is: \(score)")
                if score == 6
                {
                    score = 18
                }
                else if score == 12
                {
                    score = 14
                }
                else if score == 15
                {
                    score = 27
                }
                else if score == 11
                {
                    score = 3
                }
                else if score == 23
                {
                    score = 16
                }
                else if score == 25
                {
                    score = 20
                }
                else if score == 35
                {
                    score = 28
                }
                setPlayerImage()
                
                removePlayerImage()
            }
            else {
                if temp == 36 {
                    score = 36
                    print("win")
                    setPlayerImage()
                    removePlayerImage()
                    reset()
                }
            }
            
        }
    }
    
    func reset() {
        score = 0
        r =  0
        previus = 0
        isPlayerActive = false
        removePlayerImage()
    }
    
    func setPlayerImage()-> Void{
        switch score{
        case 1:
            im01.image = UIImage(named: "coin")
        case 2:
            im02.image = UIImage(named: "coin")
        case 3:
            im03.image = UIImage(named: "coin")
        case 4:
            im04.image = UIImage(named: "coin")
        case 5:
            im05.image = UIImage(named: "coin")
        case 6:
            im06.image = UIImage(named: "coin")
        case 7:
            im07.image = UIImage(named: "coin")
        case 8:
            im08.image = UIImage(named: "coin")
        case 9:
            im09.image = UIImage(named: "coin")
        case 10:
            im10.image = UIImage(named: "coin")
        case 11:
            im11.image = UIImage(named: "coin")
        case 12:
            im12.image = UIImage(named: "coin")
        case 13:
            im13.image = UIImage(named: "coin")
        case 14:
            im14.image = UIImage(named: "coin")
        case 15:
            im15.image = UIImage(named: "coin")
        case 16:
            im16.image = UIImage(named: "coin")
        case 17:
            im17.image = UIImage(named: "coin")
        case 18:
            im18.image = UIImage(named: "coin")
        case 19:
            im19.image = UIImage(named: "coin")
        case 20:
            im20.image = UIImage(named: "coin")
        case 21:
            im21.image = UIImage(named: "coin")
        case 22:
            im22.image = UIImage(named: "coin")
        case 23:
            im23.image = UIImage(named: "coin")
        case 24:
            im24.image = UIImage(named: "coin")
        case 25:
            im25.image = UIImage(named: "coin")
        case 26:
            im26.image = UIImage(named: "coin")
        case 27:
            im27.image = UIImage(named: "coin")
        case 28:
            im28.image = UIImage(named: "coin")
        case 29:
            im29.image = UIImage(named: "coin")
        case 30:
            im30.image = UIImage(named: "coin")
        case 31:
            im31.image = UIImage(named: "coin")
        case 32:
            im32.image = UIImage(named: "coin")
        case 33:
            im33.image = UIImage(named: "coin")
        case 34:
            im34.image = UIImage(named: "coin")
        case 35:
            im35.image = UIImage(named: "coin")
        case 36:
            im36.image = UIImage(named: "coin")
        default:
            return
        }
    }
    
    func removePlayerImage()-> Void{
        switch previus{
        case 1:
            im01.image = nil
        case 2:
            im02.image = nil
        case 3:
            im03.image = nil
        case 4:
            im04.image = nil
        case 5:
            im05.image = nil
        case 6:
            im06.image = nil
        case 7:
            im07.image = nil
        case 8:
            im08.image = nil
        case 9:
            im09.image = nil
        case 10:
            im10.image = nil
        case 11:
            im11.image = nil
        case 12:
            im12.image = nil
        case 13:
            im13.image = nil
        case 14:
            im14.image = nil
        case 15:
            im15.image = nil
        case 16:
            im16.image = nil
        case 17:
            im17.image = nil
        case 18:
            im18.image = nil
        case 19:
            im19.image = nil
        case 20:
            im20.image = nil
        case 21:
            im21.image = nil
        case 22:
            im22.image = nil
        case 23:
            im23.image = nil
        case 24:
            im24.image = nil
        case 25:
            im25.image = nil
        case 26:
            im26.image = nil
        case 27:
            im27.image = nil
        case 28:
            im28.image = nil
        case 29:
            im29.image = nil
        case 30:
            im30.image = nil
        case 31:
            im31.image = nil
        case 32:
            im32.image = nil
        case 33:
            im33.image = nil
        case 34:
            im34.image = nil
        case 35:
            im35.image = nil
        case 36:
            im36.image = nil
        default:
            return
        }
        
        
    }
    
}
