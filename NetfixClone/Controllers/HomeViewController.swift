//
//  HomeViewController.swift
//  NetfixClone
//
//  Created by NGUYENTHITHUYDUNG on 3/21/22.
//

import UIKit

class HomeViewController: UIViewController {

    private let homeFeedTalbe: UITableView = {
        let talbe = UITableView(frame: .zero, style: .grouped)
        talbe.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return talbe
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTalbe)
        
        homeFeedTalbe.delegate = self
        homeFeedTalbe.dataSource = self
        
        let header = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
        homeFeedTalbe.tableHeaderView = header
        //homeFeedTalbe.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTalbe.frame = view.bounds
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    // return the number of sections in the table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    
    //return the number of rows in a given section of a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
}
