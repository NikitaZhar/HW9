//
//  ViewController.swift
//  HW9
//
//  Created by Nikita Zharinov on 25/02/2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var springAnimatedView: SpringView!

    @IBAction func animationButton(_ sender: SpringButton) {
        let animation = TypeAnimation.getNewAnimation()
        springAnimatedView.animation = animation.nameAnimation
        springAnimatedView.curve = animation.curve
        springAnimatedView.force = CGFloat(animation.force)
        springAnimatedView.delay = CGFloat(animation.delay)
        springAnimatedView.duration = CGFloat(animation.duration)
        
        animationLabel.text = "Animation : \(animation.nameAnimation)"
        curveLabel.text = "Curve : \(animation.curve)"
        forceLabel.text = "Force : \(fortmatString(from: animation.force))"
        delayLabel.text = "Delay : \(fortmatString(from: animation.delay))"
        durationLabel.text = "Duration : \(fortmatString(from: animation.duration))"
        sender.setTitle("Run \(animation.nameAnimation)", for: .normal)

        springAnimatedView.animate()
    }
    
    private func fortmatString(from random: Float) -> String {
        String(format: "%.2f", random)
    }
    
    private func getAnimationParamenters () {
        
    }
}

