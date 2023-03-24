//
//  TryAnimationViewController.swift
//  HW9
//
//  Created by Карина Чадаева on 23.03.23.
//

import Spring

class TryAnimationViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var animationDescriptionLabel: UILabel!
    
    private let listOfAnimations = Animation.getAnimations()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationDescriptionLabel.text = "Description of the animation will appear here"
    }
    
    @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
        if let animation = listOfAnimations.randomElement() {
            animatedView.animation = animation.animationType
            animatedView.curve = animation.curveType
            animatedView.duration = CGFloat(animation.duration)
            animatedView.animate()
            
        
            setLabelText(for: animation)
        }
    }
    
    private func setLabelText(for animation: Animation) {
        animationDescriptionLabel.text = "preset: \(animation.animationType) \ncurve: \(animation.curveType) \nforce: \(animation.force) \nduration: \(animation.duration) \ndelay: \(animation.delay)"
    }
    
}

