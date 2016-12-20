//
//  ViewController.swift
//  Cabinda Pill
//
//  Created by Luis  Costa on 17/12/16.
//  Copyright © 2016 Luis  Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var succImage: UIImageView!
   
    
    
    
    // My variables
    let states = ["Alaska", "Arkansas", "Alabama", "California", "New York"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Ao carregar vai fazer aparecer o picker
    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        // Hide coutry label & country text
        countryLabel.isHidden = true
        countryField.isHidden = true
        buyNowButton.isHidden = true
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Numero de componentes que aparecem no statePicker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // Funcao que representa o que acontece quando
    // o usuario seleciona uma row do picker
    // assim que for selecionado esconde o picker
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        // Swhoe country label & country picker
        countryField.isHidden = false
        countryLabel.isHidden = false
        buyNowButton.isHidden = false
        
    }
    
    // Tudo o que está dentro das views é considerado subviews
    // Logo, podemos correr todas escondendo cada uma
    @IBAction func buyNowButtonPressed(_ sender: Any) {
        // Loop the subviews
        for sbv in self.view.subviews {
            sbv.isHidden = true
        }
        succImage.isHidden = false
    }
   
}

