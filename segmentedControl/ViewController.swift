//
//  ViewController.swift
//  segmentedControl
//
//  Created by 董禾翊 on 2022/8/29.
//

import UIKit

class ViewController: UIViewController {
    let pics = ["魔戒現身", "雙城奇謀", "王者再臨"]
    var index = 0
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func preBtn(_ sender: Any) {
        index = (index + pics.count - 1) % pics.count
        imageView.image = UIImage(named: pics[index])
        nameLable.text = pics[index]
        pageControl.currentPage = index
        segmentControl.selectedSegmentIndex = index
    }
    
    @IBAction func nextBtn(_ sender: Any) {
        index = (index + 1) % pics.count
        imageView.image = UIImage(named: pics[index])
        nameLable.text = pics[index]
        pageControl.currentPage = index
        segmentControl.selectedSegmentIndex = index
    }
    
    
    @IBAction func pageControlChange(_ sender: UIPageControl) {
        index = sender.currentPage
        imageView.image = UIImage(named: pics[index])
        nameLable.text = pics[index]
        segmentControl.selectedSegmentIndex = index
    }
    
    @IBAction func segmentControlChange(_ sender: UISegmentedControl) {
        index = sender.selectedSegmentIndex
        imageView.image = UIImage(named: pics[index])
        nameLable.text = pics[index]
        pageControl.currentPage = index
    }
}

