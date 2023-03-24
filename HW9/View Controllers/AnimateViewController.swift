//
//  AnimateViewController.swift
//  HW9
//
//  Created by Карина Чадаева on 24.03.23.
//

import Spring

class AnimateViewController: UIViewController {

    @IBOutlet var animatedFigures: [SpringView]!
    @IBOutlet var runAnimationButton: SpringButton!
    
    var animationChosen: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runAnimationButton.setTitle("Run \(animationChosen.animationType)", for: .normal)
    }
    
    @IBAction func runAnimationButtonPressed(_ sender: SpringButton) {
        guard let animation = animationChosen else { return }
        for figure in animatedFigures {
            figure.animation = animation.animationType
            figure.curve = animation.curveType
            figure.delay = CGFloat(animation.delay)
            figure.duration = CGFloat(animation.duration)
            figure.force = CGFloat(animation.force)
            figure.animate()
        }
        
        sender.animation = animation.animationType
        sender.curve = animation.curveType
        sender.force = CGFloat(animation.force + 2)
        sender.duration = CGFloat(animation.duration - 0.2)
        sender.delay = CGFloat(animation.delay)
        sender.animate()
    }

}
