//
//  ViewController.swift
//  SampleTableView
//
//  Created by 長谷川樹 on 2021/08/15.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    let fruits = ["りんご","ブドウ"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = fruits[indexPath.row]
        //indexPath.row 0からfruits.countになる
        //fruits.count 回実行される
        return cell
    }
    



}

