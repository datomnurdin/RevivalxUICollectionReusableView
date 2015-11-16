//
//  ViewController.swift
//  RevivalxUICollectionReusableView
//
//  Created by Mohammad Nurdin bin Norazan on 16/11/2015.
//  Copyright © 2015 Nurdin Norazan Services. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCell", forIndexPath: indexPath)
        return cell
    }

    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        switch kind {
            //2
        case UICollectionElementKindSectionHeader:
            //3
            let headerView =
            collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                withReuseIdentifier: "PhotoHeaderView",
                forIndexPath: indexPath)
                as! PhotoHeaderView
            headerView.lblHeader.text = "My Collection View"
            return headerView
        default:
            //4
            assert(false, "Unexpected element kind")
        }
    }
}
