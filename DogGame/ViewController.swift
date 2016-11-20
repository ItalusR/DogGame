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
    
    static let shared = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showValuesDog()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showValuesDog(){
        
        let values = getStatusValue()
        
        self.raivaLabel.text = "Raiva: \(values[0])"
        self.fomeLabel.text = "Fome: \(values[1])"
        self.saudeLabel.text = "Saúde: \(values[2])"
        
        self.raivaBar.frame.size.width = CGFloat(values[0])
        self.fomeBar.frame.size.width = CGFloat(values[1])
        self.saudeBar.frame.size.width = CGFloat(values[2])
        
        self.raivaBar.backgroundColor = UIColor(colorLiteralRed: (255-values[0])/255, green: values[0]/255, blue: 0, alpha: 1)
        self.fomeBar.backgroundColor = UIColor(colorLiteralRed: (255-values[1])/255, green: values[1]/255, blue: 0, alpha: 1)
        self.saudeBar.backgroundColor = UIColor(colorLiteralRed: (255-values[2])/255, green: values[2]/255, blue: 0, alpha: 1)
    }
    
    func getStatusValue() -> [Float]{
        
        let barra1: Float = 1+Float(arc4random()%240)
        let barra2: Float = 1+Float(arc4random()%240)
        let barra3: Float = 1+Float(arc4random()%240)
        
        
        
        return [barra1,barra2,barra3]
    }


}

