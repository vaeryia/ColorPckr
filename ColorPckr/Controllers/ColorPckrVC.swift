//
//  ColorPckrVC.swift
//  ColorPckr
//
//  Created by Valeria Moyseychik on 11.09.23.
//

import UIKit

class ColorPckrVC: UIViewController {

// слайдеры
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    
// текс филды
    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var opacityTF: UITextField!
    
    // колор вью
    @IBOutlet weak var colorView: UIView!
    
    

// кнопки
    @IBOutlet weak var changeWithDelegateBtn: UIButton!
    @IBOutlet weak var changeWithClosureBtn: UIButton!

    @IBAction func changeBackgroundWithDel() {
        
       }
    
      override  func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = .white
        redTF.text = " "
        greenTF.text = " "
        blueTF.text = " "
        opacityTF.text = " "

    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        updateColor()
        updateRGB()
    }
    
    func updateRGB() {
        redTF.text = String(Int(255*redSlider.value))
        greenTF.text = String(Int(255*greenSlider.value))
        blueTF.text = String(Int(255*blueSlider.value))
        opacityTF.text = String(Int(100*opacitySlider.value))
    }
  
    func updateColor() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        let opacity = CGFloat(opacitySlider.value)
        let color = UIColor(red: red, green: green, blue: blue, alpha: opacity)
        colorView.backgroundColor = color
    }
//    var delegate: DataUpdProtocol?

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

