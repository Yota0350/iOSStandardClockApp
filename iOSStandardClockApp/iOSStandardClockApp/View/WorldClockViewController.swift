//
//  WorldClockViewController.swift
//  iOSStandardClockApp
//
//  Created by Yota on 2022/02/26.
//

import UIKit

class WorldClockViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    let items = ["東京", "アクトン", "アシガバード"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "WorldClockViewCell", for:indexPath)
        cell.textLabel!.text = items[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationItem()
    }
    
    func setupNavigationItem(){
        self.navigationItem.title = "世界時計"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addButtonTapped(_:))
        )
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "編集",
            style: .done,
            target: self,
            action: #selector(editButtonTapped(_:))
        )
    }
    
    @objc func addButtonTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ToAddWorldClockView", sender: nil)
    }
    
    @objc func editButtonTapped(_ sender: UIBarButtonItem) {
        print("編集ボタンタップ")
    }
}
