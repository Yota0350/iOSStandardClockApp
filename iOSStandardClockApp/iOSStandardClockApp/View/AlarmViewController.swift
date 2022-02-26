//
//  AlarmViewController.swift
//  iOSStandardClockApp
//
//  Created by Yota on 2022/02/26.
//

import UIKit

class AlarmViewController: UIViewController {

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
