//
//  ViewController.swift
//  MyAdmobTest_swif
//
//  Created by 성정현 on 2022/05/25.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController ,GADBannerViewDelegate {
    
    var bannerView: GADBannerView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        //배너의 사이즈를 설절
        // In this case, we instantiate the banner with desired ad size.
        bannerView = GADBannerView(adSize: GADAdSizeBanner)

        
        
        // 광고 배너의 아이디를 설정
        bannerView.adUnitID = "ca-app-pub-1127102442415755/7453010613"
        bannerView.rootViewController = self
        //광고를 로드한다
        bannerView.load(GADRequest())
        
        //데리게이트를 배너뷰 설정
        bannerView.delegate = self
    
    }
    
    //화면의 뷰를 추가
    func addBannerViewToView(_ bannerView: GADBannerView) {
        //오토레이아웃으로 뷰를 설정
        bannerView.translatesAutoresizingMaskIntoConstraints = false
        //루트뷰에 배너를 추기
        view.addSubview(bannerView)
        //앵커를 설정하여 오토레이아웃 설정
        view.addConstraints(
          [NSLayoutConstraint(item: bannerView,
                              attribute: .bottom,
                              relatedBy: .equal,
                              toItem: bottomLayoutGuide,
                              attribute: .top,
                              multiplier: 1,
                              constant: 0),
           NSLayoutConstraint(item: bannerView,
                              attribute: .centerX,
                              relatedBy: .equal,
                              toItem: view,
                              attribute: .centerX,
                              multiplier: 1,
                              constant: 0)
          ])
       }
    //MAKE: - GADBannerViewDelegate 메소드
    
    func bannerViewDidReceiveAd(_ bannerView: GADBannerView) {
      print("bannerViewDidReceiveAd")
        //화면의 뷰를 추가
        addBannerViewToView(bannerView)
    }

    func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
      print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
    }

    func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
      print("bannerViewDidRecordImpression")
    }

    func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillPresentScreen")
    }

    func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewWillDIsmissScreen")
    }

    func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
      print("bannerViewDidDismissScreen")
    }
    


}

