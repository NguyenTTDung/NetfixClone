//
//  HeroHeaderUIView.swift
//  NetfixClone
//
//  Created by NGUYENTHITHUYDUNG on 3/23/22.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()
    
    // setting gradien layer fow hero header
    private func addGradien() {
        let gradienLayer = CAGradientLayer()
        gradienLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradienLayer.frame = bounds
        layer.addSublayer(gradienLayer)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }

}
