//
//  SlidesViewController.swift
//  kidsStudy
//
//  Created by Eminko on 30.03.2023.
//

import UIKit

class SlidesViewController: UIViewController, UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    
    var slides:[slideUIView] = []
    
    var slideArray = [slideUIView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        setScrollView(slides: slides1())
        
        //dikey kaymayı kapatmak için
        self.scrollView.contentSize.height = 1.0
        
        
    }
    
    
    
    func slides1() -> [slideUIView]{
        
        let slide1 : slideUIView = Bundle.main.loadNibNamed("slideView", owner: self)?.first as! slideUIView
        let slide2 : slideUIView = Bundle.main.loadNibNamed("slideView", owner: self)?.first as! slideUIView

        slide1.label.text = "labels1"
        slide2.label.text = "Labels2"
        
        slideArray.append(slide1)
        slideArray.append(slide2)

            
        return slideArray
    }

    //    Scrollview bilgileri ve kaydırılabbilir öğelerin eklenmesi
    func setScrollView(slides: [slideUIView])
    {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)

        scrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scrollView.isPagingEnabled = true
        
        for i in 0 ..< slides.count
        {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scrollView.addSubview(slides[i])
        }
    }
    
    
    func scrollViewDidScroll(_ scrollView: UIScrollView)
    {
        let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
        
        //        Dikey durum
        let maximumHorizontalOffset: CGFloat = scrollView.contentSize.width - scrollView.frame.width
        let currentHorizontalOffset: CGFloat = scrollView.contentOffset.x
        
        //        Yatay durum tam tersi muhtemelen
        let maximumVerticalOffset: CGFloat = scrollView.contentSize.height - scrollView.frame.height
        let currentVerticalOffset: CGFloat = scrollView.contentOffset.y
        
        //        Yatay ve dikey olarak kaçıncı scrollView'de olduğumuzu anlamak için bulunan view / maximum view
        let percentageHorizontalOffset: CGFloat = currentHorizontalOffset / maximumHorizontalOffset
        
        let percentageVerticalOffset: CGFloat = currentVerticalOffset / maximumVerticalOffset
        
        let percentOffset: CGPoint = CGPoint(x: percentageHorizontalOffset, y: percentageVerticalOffset)
  }
}
