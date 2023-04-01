//
//  ListViewController.swift
//  kidsStudy
//
//  Created by Eminko on 3.03.2023.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listViewModel = ListViewModel()
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        listViewModel.getData()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
        tableView.indicatorStyle = .white
        }
}


extension ListViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listViewModel.numberOfRowInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell") as! ListTableViewCell
        
        cell.labelText.text = listViewModel.listData[indexPath.row].listeArray
        cell.imgView.image = UIImage(named: listViewModel.listData[indexPath.row].imgArray)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "listToSlide", sender: nil)
    }
    
}
