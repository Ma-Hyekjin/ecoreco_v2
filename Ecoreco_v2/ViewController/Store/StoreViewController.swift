//
//  StoreViewController.swift
//  Ecoreco_v2
//
//  Created by 마혁진 on 2022/10/16.
//

import UIKit

class StoreViewController: UIViewController {
    var count1 : Bool = false
    var count2 : Bool = false
    var count3 : Bool = false
    var count4 : Bool = false
    var count5 : Bool = false
    var count6 : Bool = false
    var count7 : Bool = false
    var count8 : Bool = false
    var count9 : Bool = false
    var count10 : Bool = false
    
    @IBAction func goToCart(_ sender: UIButton) {
        //장보기창 이동 or 팝업 띄우기
    }
    
    @IBOutlet weak var skinCare: UIButton!
    @IBAction func skinCareButton(_ sender: UIButton) {
        if self.count3 == true {
            self.count3 = false
            UIView.animate(withDuration: 0.1){
                self.skinCare.backgroundColor = UIColor.ecorecoColor2
                self.skinCare.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count3 = true
            UIView.animate(withDuration: 0.1){
                self.skinCare.backgroundColor = UIColor.brightenGray
                self.skinCare.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    @IBOutlet weak var wash: UIButton!
    @IBAction func washButton(_ sender: UIButton) {
        if self.count5 == true {
            self.count5 = false
            UIView.animate(withDuration: 0.1){
                self.wash.backgroundColor = UIColor.ecorecoColor2
                self.wash.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count5 = true
            UIView.animate(withDuration: 0.1){
                self.wash.backgroundColor = UIColor.brightenGray
                self.wash.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    @IBOutlet weak var multi: UIButton!
    @IBAction func multiButton(_ sender: UIButton) {
        if self.count5 == true {
            self.count5 = false
            UIView.animate(withDuration: 0.1){
                self.multi.backgroundColor = UIColor.ecorecoColor2
                self.multi.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count5 = true
            UIView.animate(withDuration: 0.1){
                self.multi.backgroundColor = UIColor.brightenGray
                self.multi.setTitleColor(UIColor.black, for: .normal)
            }
        }
        
    }
    
    @IBOutlet weak var other: UIButton!
    @IBAction func otherButton(_ sneder: UIButton) {
        if self.count6 == true {
            self.count6 = false
            UIView.animate(withDuration: 0.1){
                self.other.backgroundColor = UIColor.ecorecoColor2
                self.other.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count6 = true
            UIView.animate(withDuration: 0.1){
                self.other.backgroundColor = UIColor.brightenGray
                self.other.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    
    @IBOutlet weak var eco: UIButton!
    @IBAction func ecoButton(_ sender: UIButton) {
        if self.count7 == true {
            self.count7 = false
            UIView.animate(withDuration: 0.1){
                self.eco.backgroundColor = UIColor.ecorecoColor2
                self.eco.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count7 = true
            UIView.animate(withDuration: 0.1){
                self.eco.backgroundColor = UIColor.brightenGray
                self.eco.setTitleColor(UIColor.black, for: .normal)
            }
        }
        
    }
    
    
    @IBOutlet weak var vegan: UIButton!
    @IBAction func veganButton(_ sender: UIButton) {
        if self.count8 == true {
            self.count8 = false
            UIView.animate(withDuration: 0.1){
                self.vegan.backgroundColor = UIColor.ecorecoColor2
                self.vegan.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count8 = true
            UIView.animate(withDuration: 0.1){
                self.vegan.backgroundColor = UIColor.brightenGray
                self.vegan.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    
    @IBOutlet weak var cruelty: UIButton!
    @IBAction func crueltyButton(_ sender: UIButton) {
        if self.count9 == true {
            self.count9 = false
            UIView.animate(withDuration: 0.1){
                self.cruelty.backgroundColor = UIColor.ecorecoColor2
                self.cruelty.setTitleColor(UIColor.white, for: .normal)
            }
        } else {
            self.count9 = true
            UIView.animate(withDuration: 0.1){
                self.cruelty.backgroundColor = UIColor.brightenGray
                self.cruelty.setTitleColor(UIColor.black, for: .normal)
            }
        }
    }
    
    
    @IBOutlet weak var reuse: UIButton!
    @IBAction func reuseButton(_ sender: UIButton) {
        if self.count10 == true {
            UIView.animate(withDuration: 0.1){
                self.reuse.backgroundColor = UIColor.ecorecoColor2
                self.reuse.setTitleColor(UIColor.white, for: .normal)
                self.count10 = false
            }
        } else {
            self.count10 = true
            UIView.animate(withDuration: 0.1){
                self.reuse.backgroundColor = UIColor.brightenGray
                self.reuse.setTitleColor(UIColor.black, for: .normal)
            }
        }
        
    }
    
    
//    @IBOutlet weak var collectionView: UICollectionView!
    
//    var arrImageSet: [String] = ["image1", "image2", "image3", "image4", "image5", "image6"]

    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchBar.backgroundImage = UIImage() //선 제거
    }
    
}

//extension StoreViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//    // CollectionView item 개수
//        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//            return arrImageSet.count
//        }
//
//        // CollectionView Cell의 Object
//        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GridCollectionViewCell", for: indexPath) as! GridCollectionViewCell
//
//            cell.image.image = UIImage(named: arrImageSet[indexPath.row]) ?? UIImage()
//
//            return cell
//        }
//
//        // CollectionView Cell의 Size
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//            let width: CGFloat = collectionView.frame.width / 3 - 1.0
//
//            return CGSize(width: width, height: width)
//        }
//
//        // CollectionView Cell의 위아래 간격
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//            return 1.0
//        }
//
//        // CollectionView Cell의 옆 간격
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//            return 1.0
//        }
//}
//
//extension StoreViewController: UICollectionViewDataSource, UICollectionViewDelegate{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 6
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as?
//                    UICollectionViewCell else {
//                return UICollectionViewCell()
//            }
//
//            return cell
//    }
//
//
//
//}
