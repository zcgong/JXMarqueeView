//
//  MarqueeImageViewViewController.swift
//  JXMarqueeView
//
//  Created by jiaxin on 2018/5/1.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class MarqueeImageViewViewController: UIViewController {
    private let marqueeView = JXMarqueeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        let imageView = UIImageView(image: UIImage(named: "haizeiwang.jpeg"))
        imageView.contentMode = .scaleAspectFill

        marqueeView.contentView = imageView
        marqueeView.marqueeType = .reverse
        self.view.addSubview(marqueeView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        marqueeView.bounds = CGRect(x:0, y:0, width: self.view.bounds.width, height: 360)
        marqueeView.center = self.view.center
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
