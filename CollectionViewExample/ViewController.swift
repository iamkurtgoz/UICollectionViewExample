//
//  ViewController.swift
//  CollectionViewExample
//
//  Created by Mehmet Kurtgöz on 20.11.2020.
//

import UIKit

private let itemsPerRow: CGFloat = 2
private let sectionInsets = UIEdgeInsets(top: 25.0, left: 20.0, bottom: 25.0, right: 20.0)

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var loading: ((Bool) -> ())?
    var timer = Timer()
    var articles = [ArticleItem]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib.init(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionViewCell")
        
        let article1 = ArticleItem(image: #imageLiteral(resourceName: "Her Kız Kodlayabilir (ft. Nadin)"), caption: "TurkishKit Özel Etkinliği", title: "Her Kız Kodlayabilir")
        let article2 = ArticleItem(image: #imageLiteral(resourceName: "Sign In with Apple"), caption: "TurkishKit Blog Yazısı", title: "Sign in with Apple")
        let article3 = ArticleItem(image: #imageLiteral(resourceName: "Dub Dub '19 Etkinliği"), caption: "TurkishKit Özel Etkinliği", title: "WWDC19 Özel Etkinliği")
        let article4 = ArticleItem(image: #imageLiteral(resourceName: "Apple'da Kariyer"), caption: "TurkishKit Haberleri", title: "İçinizdeki Yeteneği Apple'da Keşfedin!")
        let article5 = ArticleItem(image: #imageLiteral(resourceName: "URLSession"), caption: "TurkishKit Blog Yazısı", title: "URLSession: İnternet ile Veri Alışverişi")
                
        articles = [article1, article2, article3, article4, article5]
        
        loading = { [weak self] isLoading in
            DispatchQueue.main.async {
                print(isLoading)
            }
        }
        
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(time), userInfo: nil, repeats: true)
    }
    
    @objc func time(){
        loading?(true)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return articles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        
        cell.imageHeader.image = articles[indexPath.row].image
        cell.labelTitle.text = articles[indexPath.row].title
        cell.labelCaption.text = articles[indexPath.row].caption
        
        return cell

    }
}
