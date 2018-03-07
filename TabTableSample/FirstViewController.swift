//
//  FirstViewController.swift
//  TabTableSample
//
//  Created by Kazama Ryusei on 2018/03/07.
//  Copyright © 2018年 Kazama Ryusei. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var table: UITableView!
    
    // Section毎の画像配列
    let imgArray: NSArray = [
        "https://free-materials.com/adm/wp-content/uploads/2017/01/acced6dbbbf5cb83d2c9e67b8dad6e7f-750x499.jpg", "https://www.photock.jp/photo/middle/photo0000-5555.jpg"
    ]
    
    let nameArray: NSArray = [
        "東京タワー", "スカイツリー"
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        let url = NSURL(string: imgArray[indexPath.row] as! String)
        
        let file = NSData(contentsOf: url! as URL)
        
        let img = UIImage(data: file! as Data)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = img
        
        let label1 = cell.viewWithTag(2) as! UILabel
        label1.text = nameArray[indexPath.row] as? String
        
        return cell
    }
    
    func tableView(_ table: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

