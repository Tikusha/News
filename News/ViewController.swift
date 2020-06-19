//
//  ViewController.swift
//  News
//
//  Created by Tiko on 6/19/20.
//  Copyright © 2020 Tiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func initializer(image: UIImage?) {
        let vc = NewDetailViewController()
        self.present(vc, animated: true) {
            vc.flowerImage = image
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.bounds.height
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? NewsFeedItemTableViewCell
        let image = cell?.imageNew.image
        self.initializer(image: image)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let item = cell as? NewsFeedItemTableViewCell {
            item.imageNew.image = UIImage(named: "image\((1...5).randomElement() ?? 1)")
        }
    }
}
