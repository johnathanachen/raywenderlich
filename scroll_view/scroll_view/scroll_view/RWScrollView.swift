//
//  RWScrollView.swift
//  scroll_view
//
//  Created by Johnathan Chen on 12/15/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class RWScrollView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panView(with:)))
        addGestureRecognizer(panGesture)
    }
    
    @objc func panView(with gestureRecognizer: UIPanGestureRecognizer) {
        let translation = gestureRecognizer.translation(in: self)
        self.bounds.origin.y = self.bounds.origin.y - translation.y
        gestureRecognizer.setTranslation(CGPoint.zero, in: self)
    }

}
