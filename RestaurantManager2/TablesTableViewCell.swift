//
//  TablesTableViewCell.swift
//  RestaurantManager2
//
//  Created by Chattarin.par1 on 3/12/2561 BE.
//  Copyright © 2561 ios. All rights reserved.
//

import UIKit

class TablesTableViewCell: UITableViewCell {

    @IBOutlet weak var clCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension TablesTableViewCell{
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDelegate & UICollectionViewDataSource>
        (_ dataSourceDelegate: D, forRow row:Int){
        clCollectionView.delegate = dataSourceDelegate
        clCollectionView.dataSource = dataSourceDelegate
        clCollectionView.reloadData()
    }
}
