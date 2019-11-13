//
//  TopMainView.swift
//  Test-Git3
//
//  Created by 杉浦多可楽 on 2019/11/13.
//  Copyright © 2019 多可楽. All rights reserved.
//

import UIKit
import PGFramework

protocol TopMainViewDelegate: NSObjectProtocol{
    
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet var tableView: UITableView!
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.dataSource = self
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainTableViewCell")
    }
}

// MARK: - Protocol
extension TopMainView:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell:TopMainTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TopMainTableViewCell", for: indexPath)as?TopMainTableViewCell else{return UITableViewCell()}
        return cell
    }
    
    
}

// MARK: - method
extension TopMainView {
    
}

