//
//  ViewController.swift
//  HW9
//
//  Created by Nikita Zharinov on 25/02/2021.
//

import Spring

class ViewController: UIViewController {
    
    var animation: TypeAnimation!
    var buttonPressed = false
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var springAnimatedView: SpringView!

    @IBAction func animationButton(_ sender: SpringButton) {
        if !buttonPressed {
            buttonPressed.toggle()
            getNewAnimation()
        }
        updateLabels()
        proceedAnimation()
        getNewAnimation()
        updateButtonTitle(sender)
    }
        
    private func getNewAnimation() {
        animation = TypeAnimation.getNewAnimation()
    }
    
    private func proceedAnimation() {
        springAnimatedView.animation = animation.nameAnimation
        springAnimatedView.curve = animation.curve
        springAnimatedView.force = CGFloat(animation.force)
        springAnimatedView.delay = CGFloat(animation.delay)
        springAnimatedView.duration = CGFloat(animation.duration)
        springAnimatedView.animate()
    }
    
    private func updateLabels() {
        animationLabel.text = "Animation : \(animation.nameAnimation)"
        curveLabel.text = "Curve : \(animation.curve)"
        forceLabel.text = "Force : \(fortmatString(from: animation.force))"
        delayLabel.text = "Delay : \(fortmatString(from: animation.delay))"
        durationLabel.text = "Duration : \(fortmatString(from: animation.duration))"
    }
    
    private func updateButtonTitle(_ sender: SpringButton) {
        sender.setTitle("Run \(animation.nameAnimation)", for: .normal)
    }
    
    private func fortmatString(from random: Float) -> String {
        String(format: "%.2f", random)
    }
}

