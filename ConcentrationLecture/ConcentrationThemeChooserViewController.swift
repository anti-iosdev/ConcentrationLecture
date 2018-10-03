//
//  ConcentrationThemeChooserViewController.swift
//  ConcentrationLecture
//
//  Created by Anti on 10/3/18.
//  Copyright © 2018 Anti. All rights reserved.
//

import UIKit

class ConcentrationThemeChooserViewController: UIViewController {

    let themes = [
        "Sports":"⚽️🏀🏈⚾️🎾🏐🏉🎱🏓🏂🥊⛳️",
        "Animals":"🐶🐔🦊🐼🦀🐌🐨🐳🐙🦄🐵",
        "Faces":"😀😂😎😣🤨🧐😡😳😱😖",
    ]
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Choose Theme" {
            if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
                if let cvc = segue.destination as? ConcentrationViewController {
                    cvc.theme = theme
                }
            }
        }
    }
    
    
}
