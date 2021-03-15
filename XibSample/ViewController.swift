//
//  ViewController.swift
//  XibSample
//
//  Created by kusumi on 2021/03/15.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    // セルのxibを登録するのに必要
    @IBOutlet weak var tableView: UITableView!
    
    var dataList = ["マリオ", "ルイージ", "ヨッシー", "ドンキーコング", "ピカチュウ", "リンク", "サムス", "C.ファルコン", "プリン", "ネス"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 自作セルをTableViewに登録する
        // xibを使わない場合はstoryboardでセルを登録できてた
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "tableViewCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.testLabel.text = dataList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }

}
