//
//  ViewController.swift
//  MyFirstGame
//
//  Created by muhammet on 27.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var score=0
    var timer=Timer()
    var counter=0
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    @IBOutlet weak var kind1: UIImageView!
    @IBOutlet weak var kind2: UIImageView!
    @IBOutlet weak var kind3: UIImageView!
    @IBOutlet weak var kind4: UIImageView!
    @IBOutlet weak var kind5: UIImageView!
    @IBOutlet weak var kind6: UIImageView!
    @IBOutlet weak var kind7: UIImageView!
    @IBOutlet weak var kind8: UIImageView!
    @IBOutlet weak var kind9: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text="Score: \(score)"
        
        kind1.isUserInteractionEnabled=true
        kind2.isUserInteractionEnabled=true
        kind3.isUserInteractionEnabled=true
        kind4.isUserInteractionEnabled=true
        kind5.isUserInteractionEnabled=true
        kind6.isUserInteractionEnabled=true
        kind7.isUserInteractionEnabled=true
        kind8.isUserInteractionEnabled=true
        kind9.isUserInteractionEnabled=true
        
        
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        kind1.addGestureRecognizer(recognizer1)
        kind2.addGestureRecognizer(recognizer2)
        kind3.addGestureRecognizer(recognizer3)
        kind4.addGestureRecognizer(recognizer4)
        kind5.addGestureRecognizer(recognizer5)
        kind6.addGestureRecognizer(recognizer6)
        kind7.addGestureRecognizer(recognizer7)
        kind8.addGestureRecognizer(recognizer8)
        kind9.addGestureRecognizer(recognizer9)
        
        counter=10
        timeLabel.text=String(counter)
        
        
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counterDown), userInfo: nil, repeats: true)
        
        
                                                     
                                                 

        
                                                
        
    }
    
    @objc func increaseScore(){
        score+=1
        scoreLabel.text="Score \(score)"
        
    }
    @objc func counterDown(){
        counter-=1
        timeLabel.text=String(counter)
        
        if counter==0{
            timer.invalidate()
            
            let alert = UIAlertController(title: "ZAMAN DOLDU!", message: "TEKRAR DENEMEK İSTERMİSİNİZ ?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "TAMAM", style: UIAlertAction.Style.cancel, handler: nil)
            let replayButton = UIAlertAction(title: "TEKRAR DENEYİN", style: UIAlertAction.Style.default){
             (UIAlertAction ) in
                
            }
            
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
            
            
        }
        
        
        
        
        
    }


}

