//
//  InstaFeedViewController.swift
//  CollectionViewExample
//
//  Created by Mehmet Kurtgöz on 25.11.2020.
//

import UIKit

class InstaFeedViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib.init(nibName: "InstaFeedCell", bundle: nil), forCellWithReuseIdentifier: "InstaFeedCell")
        if let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
              flowLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
            }
    }
    
}

extension InstaFeedViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InstaFeedCell", for: indexPath) as? InstaFeedCell {
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
}

extension InstaFeedViewController: UICollectionViewDelegateFlowLayout {

    /*
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         
         let width = UIScreen.main.bounds.width - (16 * 2)
         let height = UIScreen.main.bounds.height * 0.35
         
         return CGSize(width: CGFloat(width), height: CGFloat(height))
     }
     */
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 2, left: 16, bottom: 2, right: 16)
    }
 }
