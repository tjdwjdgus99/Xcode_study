//
//  ViewController.swift
//  autolayout_tutorial_04
//
//  Created by 성정현 on 2022/08/03.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var MyTableView: UITableView!
    let contentArray = [
        "동해물과 백두산이 마르고 닳도록",
        "동해물과 백두산이 마르고 닳도록하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세",
        "동해물과 백두산이 마르고 닳도록하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세",
        "동해물과 백두산이 마르고 닳도록하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세",
        "동해물과 백두산이 마르고 닳도록하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람 대한으로 길이 보전하세",
        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //  쎌 리소스 파일 가져오기
        let myTableViewCellNib = UINib(nibName: String(describing: MyTableViewCell.self), bundle: nil)
        
        //  쎌 리소스 등록
        self.MyTableView.register(myTableViewCellNib, forCellReuseIdentifier: "MyTableViewCell")
        
        self.MyTableView.rowHeight  = UITableView.automaticDimension
        self.MyTableView.estimatedRowHeight = 120
        
        //  아주 중요
        self.MyTableView.delegate = self
        self.MyTableView.dataSource = self
        
        print("contentArray.count : \(contentArray.count)")
    }


}

extension ViewController :UITableViewDelegate, UITableViewDataSource{
    
    //  테이블 뷰 쎌의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contentArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "MyTableViewCell",for: indexPath) as! MyTableViewCell
        
        cell.userContentLabel.text = contentArray[indexPath.row]
        return cell
    }
    
}
