//
//  Animation.swift
//  HW9
//
//  Created by Карина Чадаева on 23.03.23.
//

import Foundation

struct Animation {
    var animationType: String
    var curveType: String
    var force: Float
    var duration: Float
    var delay: Float
}

extension Animation {
    static func getAnimations() -> [Animation] {
        return [
            Animation(
                animationType: "squeeze",
                curveType: "linear",
                force: 1,
                duration: 0.9,
                delay: 0.545),
            Animation(
                animationType: "wobble",
                curveType: "spring",
                force: 2,
                duration: 0.5,
                delay: 0.665),
            Animation(
                animationType: "morph",
                curveType: "easeInQuad",
                force: 3,
                duration: 0.6,
                delay: 0.77),
            Animation(
                animationType: "flipX",
                curveType: "easeOutCubic",
                force: 1,
                duration: 0.7,
                delay: 0.8329),
            Animation(
                animationType: "pop",
                curveType: "easeInExpo",
                force: 2,
                duration: 0.8,
                delay: 0.9323),
            Animation(
                animationType: "fall",
                curveType: "easelnOutBack",
                force: 1,
                duration: 0.9,
                delay: 0.83782),
            Animation(
                animationType: "zoomOut",
                curveType: "easeInOutQuint",
                force: 2,
                duration: 0.8,
                delay: 1.3322),
            Animation(
                animationType: "zoomIn",
                curveType: "easeInQuint",
                force: 3,
                duration: 1.7,
                delay: 1.238493),
            Animation(
                animationType: "slideUp",
                curveType: "easeOutQuad",
                force: 2,
                duration: 0.6,
                delay: 1.134),
            Animation(
                animationType: "squeezeDown",
                curveType: "spring",
                force: 1.5,
                duration: 0.5,
                delay: 1)
        ]
    }
}
