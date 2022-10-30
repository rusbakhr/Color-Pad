//
//  ViewController.swift
//  Color Pad
//
//  Created by Rustam Bakhritdinov on 29.10.2022.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var viewPad: UIView!
    
    @IBOutlet weak var redLevel: UILabel!
    @IBOutlet weak var greenLevel: UILabel!
    @IBOutlet weak var blueLevel: UILabel!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSetup()
        greenSetup()
        blueSetup()
        viewPad.backgroundColor = nil
    }
    
    
    @IBAction func redSliderMoved(_ sender: UISlider) {
        redLevel.text = String(format: "%.2f", redSlider.value)
        redSlider.minimumTrackTintColor = .red
        viewColorChanged()
    }
    
    @IBAction func greenSliderMoved(_ sender: UISlider) {
        greenLevel.text = String(format: "%.2f", greenSlider.value)
        greenSlider.minimumTrackTintColor = .green
        viewColorChanged()
    }
    
    @IBAction func blueSliderMoved(_ sender: UISlider) {
        blueLevel.text = String(format: "%.2f", blueSlider.value)
        blueSlider.minimumTrackTintColor = .blue
        viewColorChanged()
    }
    
    
    // MARK: Private Methods
    private func viewColorChanged() {
        viewPad.backgroundColor = .init(
            red: CGFloat(redSlider.value),
            green: CGFloat (greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1.0)
    }
    
    private func redSetup() {
        redLabel.textColor = .red
        redSlider.value = 0
        redLevel.text = redSlider.value.formatted()
    }
    
    private func greenSetup() {
        greenLabel.textColor = .green
        greenSlider.value = 0
        greenLevel.text = greenSlider.value.formatted()
    }
    
    private func blueSetup() {
        blueLabel.textColor = .blue
        blueSlider.value = 0
        blueLevel.text = blueSlider.value.formatted()
    }
}
