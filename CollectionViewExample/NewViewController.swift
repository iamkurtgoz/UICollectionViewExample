//
//  NewViewController.swift
//  CollectionViewExample
//
//  Created by Mehmet Kurtgöz on 24.11.2020.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var collectionViewCell: UICollectionView!
    
    var articles = [ArticleItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewCell.dataSource = self
        collectionViewCell.delegate = self
        collectionViewCell.register(UINib.init(nibName: "NewCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewCollectionViewCell")
        
        initData()
    }
    
    private func initData(){
        let article1 = ArticleItem(image: #imageLiteral(resourceName: "Her Kız Kodlayabilir (ft. Nadin)"), caption: "TurkishKit Özel Etkinliği", title: "Her Kız Kodlayabilir")
        let article2 = ArticleItem(image: #imageLiteral(resourceName: "Sign In with Apple"), caption: "TurkishKit Blog Yazısı", title: "Sign in with Apple")
        let article3 = ArticleItem(image: #imageLiteral(resourceName: "Dub Dub '19 Etkinliği"), caption: "TurkishKit Özel Etkinliği", title: "WWDC19 Özel Etkinliği")
        let article4 = ArticleItem(image: #imageLiteral(resourceName: "Apple'da Kariyer"), caption: "TurkishKit Haberleri", title: "İçinizdeki Yeteneği Apple'da Keşfedin!")
        let article5 = ArticleItem(image: #imageLiteral(resourceName: "URLSession"), caption: "TurkishKit Blog Yazısı", title: "URLSession: İnternet ile Veri Alışverişi")
                
        articles = [article1, article2, article3, article4, article5]
    }
}

extension NewViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return articles.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewCollectionViewCell", for: indexPath) as! NewCollectionViewCell
        
        cell.imageHeader.image = articles[indexPath.row].image
        cell.labelTitle.text = articles[indexPath.row].title
        cell.labelCaption.text = articles[indexPath.row].caption.uppercased()
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

extension NewViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = UIScreen.main.bounds.width - (16 * 2)
        let height = UIScreen.main.bounds.height * 0.35
        
        return CGSize(width: CGFloat(width), height: CGFloat(height))
    }
}
