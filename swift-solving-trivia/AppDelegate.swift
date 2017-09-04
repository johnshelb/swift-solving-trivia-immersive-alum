//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        var common:[String]=[]
        for (state,capital)in trivia{
            common = []
            print(state,capital)
            let keyletters = Array(state.lowercased().characters)
            print(keyletters)
            let valueletters=Array(capital.lowercased().characters)
            print(valueletters)
            for letter in keyletters{
                print(letter)
                if valueletters.contains(letter){
                    common.append(String(letter))
                }
            }
            print(common)
            if common.count==0{
                return state
                
            }
        }
        
        return "Hi :D"
        
    }    
    
    
    
}

