//
//  Model.swift
//  HW9
//
//  Created by Nikita Zharinov on 25/02/2021.
//

struct TypeAnimation {
    let nameAnimation: String
    let curve: String
    let force: Float
    let delay: Float
    let duration: Float
}

extension TypeAnimation {
    static func getNewAnimation() -> TypeAnimation {
        TypeAnimation(
            nameAnimation: AnimationName().animationName[
                Int.random(in: 0..<AnimationName().animationName.count)
            ],
            curve: AnimationName().curveType[
                Int.random(in: 0..<AnimationName().curveType.count)
            ],
            force: Float.random(in: 1...2),
            delay: Float.random(in: 1...2),
            duration: Float.random(in: 1...2)
        )
    }
}

//MARK: - Get types of animation and cuyrves
class AnimationName {
    let animationName = ["shake", "pop", "flash", "wobble", "fall", "morph", "swing"]
    let curveType = ["spring", "easeIn", "easeOut"]
}

