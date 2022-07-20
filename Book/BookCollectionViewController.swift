//
//  BookCollectionViewController.swift
//  Book
//
//  Created by 나지운 on 2022/07/20.
//

import UIKit
import Kingfisher

class BookCollectionViewController: UICollectionViewController {
    
    let bookList = BookInfo().books

    override func viewDidLoad() {
        super.viewDidLoad()
        
        designCollectionViewLayout()
    }
    
    // MARK: - [필수] 1. 아이템 갯수 정하기
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.count
    }
    
    // MARK: - [필수] 2. 아이템 데이터 정하기
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCollectionViewCell", for: indexPath) as! BookCollectionViewCell
        
        cell.bookTitleLabel.text = bookList[indexPath.item].title
        cell.bookDateLabel.text = bookList[indexPath.item].recordDate
        
        let url = URL(string: bookList[indexPath.item].coverImage)
        cell.bookImageView.kf.setImage(with: url)
        
        cell.bookImageView.layer.cornerRadius = 5
        cell.bookImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        cell.backgroundContentView.layer.cornerRadius = 18
        
        cell.backgroundContentView.backgroundColor = bookList[indexPath.item].backgroundColor
        
        return cell
    }
    
    // MARK: - 3. 컬렉션 뷰 아이템 레이아웃 잡기
    func designCollectionViewLayout() {
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8
        let width = (UIScreen.main.bounds.width - (spacing * 4)) / 2
        
        layout.itemSize = CGSize(width: width, height: width)
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing + 2, bottom: spacing, right: spacing + 2)
        layout.minimumInteritemSpacing = spacing
        layout.minimumLineSpacing = spacing + 2
                                           
        collectionView.collectionViewLayout = layout
    }
}
