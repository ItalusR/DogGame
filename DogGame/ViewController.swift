//
//  ViewController.swift
//  DogGame
//
//  Created by Italus Rodrigues do Prado on 18/11/16.
//  Copyright © 2016 GAMEPiD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var raivaBar: UIView!
    @IBOutlet weak var fomeBar: UIView!
    @IBOutlet weak var saudeBar: UIView!
    
    @IBOutlet weak var raivaLabel: UILabel!
    @IBOutlet weak var fomeLabel: UILabel!
    @IBOutlet weak var saudeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        generateRandomStatus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateRandomStatus(){
        
        let barra1: Float = 1+Float(arc4random()%240)
        let barra2: Float = 1+Float(arc4random()%240)
        let barra3: Float = 1+Float(arc4random()%240)
        
        self.raivaLabel.text = "Raiva: \(barra1)"
        self.fomeLabel.text = "Fome: \(barra2)"
        self.saudeLabel.text = "Saúde: \(barra3)"
        
        self.raivaBar.frame.size.width = CGFloat(barra1)
        self.fomeBar.frame.size.width = CGFloat(barra2)
        self.saudeBar.frame.size.width = CGFloat(barra3)
        
        self.raivaBar.backgroundColor = UIColor(colorLiteralRed: (255-barra1)/255, green: barra1/255, blue: 0, alpha: 1)
        self.fomeBar.backgroundColor = UIColor(colorLiteralRed: (255-barra2)/255, green: barra2/255, blue: 0, alpha: 1)
        self.saudeBar.backgroundColor = UIColor(colorLiteralRed: (255-barra3)/255, green: barra3/255, blue: 0, alpha: 1)
    
    }


}

