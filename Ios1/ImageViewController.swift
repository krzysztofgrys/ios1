//
//  ImageViewController.swift
//  Ios1
//
//  Created by Krzysztof Grys on 4/8/17.
//  Copyright © 2017 ZPI. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var back: UIButton!
    
    @IBAction func backAction(_ sender: UIButton) {
        let _ = self.navigationController?.popViewController(animated: true)
    }
    var img = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpeg","10.jpg","11.jpg","12.jpg"]
    var offset = 0
    var offsetSize = 375
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        scrollView.frame = view.frame
        print(scrollView.contentSize)
        for i in 0..<img.count{
            let imageView = UIImageView()
            imageView.image = UIImage(named: img[i])
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: -50, width: self.view.frame.width, height: self.view.frame.height)
            
            scrollView.contentSize.width = scrollView.frame.width * CGFloat(i+1)
            scrollView.addSubview(imageView)
            print(scrollView.contentOffset = CGPoint(x: offset*offsetSize, y:0))
        }
        
        back.addTarget(self, action: #selector(self.backAction(_:)), for: .touchDown)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
