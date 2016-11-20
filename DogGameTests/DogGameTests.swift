//
//  DogGameTests.swift
//  DogGameTests
//
//  Created by Italus Rodrigues do Prado on 18/11/16.
//  Copyright © 2016 GAMEPiD. All rights reserved.
//

import XCTest
import Foundation
@testable import DogGame

class DogGameTests: XCTestCase {
    
    var vc = UIViewController()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//        
//        self.vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        //XCTestCase(ViewController.shared.generateRandomStatus(barra1: 30, barra2: 40, barra3: 50))
//        print("1")
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testStatusGenerate(){
        let vc = ViewController()
        let valueMin: Float = 0
        
        for index in 0...2{
            XCTAssertGreaterThanOrEqual(vc.getStatusValue()[index],valueMin,  "Valor nao pode ser menor que 0")
        }
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
