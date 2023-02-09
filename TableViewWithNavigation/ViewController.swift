//
//  ViewController.swift
//  TableViewWithNavigation
//
//  Created by Ryotaro Yabuzuka on 2023/02/09.
//

import UIKit

//tableViewにコンテンツを表示するにはDeledateを使う
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let animals = ["dog🐕", "cat🐈", "panda🐼", "lion🦁", "snake🐍"]
    
    @IBOutlet var animalTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //以下を記載することで、TableViewに表示するデータを設定するメソッドをView Controllerの中に書くことができる
        animalTableView.dataSource = self
        animalTableView.delegate = self
    }
//Detailへデータの引き渡し
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailViewController, let indexPath = sender as?
            IndexPath{
            detailVC.message = animals[indexPath.row]
        }
    }
    
    //tableViewのcell数をanimalsのカウント数にする
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //現在利用可能なcellを取り出す、その際にcellのidを指定し、indexPathでどの位置のcellかを記載
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        let label = cell.viewWithTag(1) as? UILabel
        label?.text = animals[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MainToDetail", sender: indexPath)
    }

}

