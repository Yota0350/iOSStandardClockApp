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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
