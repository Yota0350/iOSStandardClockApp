//
//  WorldClockViewController.swift
//  iOSStandardClockApp
//
//  Created by Yota on 2022/02/26.
//

import UIKit

class WorldClockViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView: UITableView!
    var items = ["東京", "アクトン", "アシガバード"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "WorldClockViewCell", for:indexPath)
        cell.textLabel!.text = items[indexPath.row]
        return cell
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: animated)
        tableView.isEditing = editing
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
        self.navigationItem.leftBarButtonItem = editButtonItem
    }
    
    func tableView(
        _ tableView: UITableView,
        commit editingStyle: UITableViewCell.EditingStyle,
        forRowAt indexPath: IndexPath
    ){
        if editingStyle == .delete{
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    @objc func addButtonTapped(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "ToAddWorldClockView", sender: nil)
    }
    
    @objc func editButtonTapped(_ sender: UIBarButtonItem) {
        //setEditing(true, animated: false)
    }
}
