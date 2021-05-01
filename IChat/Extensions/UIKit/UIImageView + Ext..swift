//
//  UIImageView + Ext..swift
//  IChat
//
//  Created by Eugene Kiselev on 01.05.2021.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
