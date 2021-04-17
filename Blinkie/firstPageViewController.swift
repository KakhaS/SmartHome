//
//  firstPageViewController.swift
//  Blinkie
//
//  Created by Kakha Sepashvili on 07.04.21.
//

import UIKit

struct Item {
    var imageName: String
}

class firstPageViewController: UIViewController {
    @IBOutlet weak var backgroundPhoto: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let settingsButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "settings"), for: .normal)
        return button
    }()
    
    private let databaseA: UIButton = {
        let databaseA = UIButton()
        databaseA.backgroundColor = .white
        databaseA.layer.borderWidth = 1
        databaseA.layer.borderColor = UIColor.blue.cgColor
        databaseA.setTitleColor(.systemPink, for: .normal)
        databaseA.setTitle("A", for: .normal)
        databaseA.contentHorizontalAlignment = .right
        return databaseA
    }()
    
    private let databaseB: UIButton = {
        let databaseB = UIButton()
        databaseB.backgroundColor = .white
        databaseB.layer.borderWidth = 1
        databaseB.layer.borderColor = UIColor.blue.cgColor
        databaseB.setTitleColor(.systemPink, for: .normal)
        databaseB.setTitle("B", for: .normal)
        databaseB.contentHorizontalAlignment = .right
        return databaseB
    }()
    
    private let databaseC: UIButton = {
        let databaseC = UIButton()
        databaseC.backgroundColor = .white
        databaseC.layer.borderWidth = 1
        databaseC.layer.borderColor = UIColor.blue.cgColor
        databaseC.setTitleColor(.systemPink, for: .normal)
        databaseC.setTitle("C", for: .normal)
        databaseC.contentHorizontalAlignment = .right
        return databaseC
    }()
    
    private let databaseD: UIButton = {
        let databaseD = UIButton()
        databaseD.backgroundColor = .white
        databaseD.layer.borderWidth = 1
        databaseD.layer.borderColor = UIColor.blue.cgColor
        databaseD.setTitleColor(.systemPink, for: .normal)
        databaseD.setTitle("D", for: .normal)
        databaseD.contentHorizontalAlignment = .right
        return databaseD
    }()
    
    private let databaseE: UIButton = {
        let databaseE = UIButton()
        databaseE.backgroundColor = .white
        databaseE.layer.borderWidth = 1
        databaseE.layer.borderColor = UIColor.blue.cgColor
        databaseE.setTitleColor(.systemPink, for: .normal)
        databaseE.setTitle("E", for: .normal)
        databaseE.contentHorizontalAlignment = .right
        return databaseE
    }()
    
    private let databaseF: UIButton = {
        let databaseF = UIButton()
        databaseF.backgroundColor = .white
        databaseF.layer.borderWidth = 1
        databaseF.layer.borderColor = UIColor.blue.cgColor
        databaseF.setTitleColor(.systemPink, for: .normal)
        databaseF.setTitle("F", for: .normal)
        databaseF.contentHorizontalAlignment = .right
        return databaseF
    }()
    
    private let databaseG: UIButton = {
        let databaseG = UIButton()
        databaseG.backgroundColor = .white
        databaseG.layer.borderWidth = 1
        databaseG.layer.borderColor = UIColor.blue.cgColor
        databaseG.setTitleColor(.systemPink, for: .normal)
        databaseG.setTitle("G", for: .normal)
        databaseG.contentHorizontalAlignment = .right
        return databaseG
    }()
    
    private let databaseH: UIButton = {
        let databaseH = UIButton()
        databaseH.backgroundColor = .white
        databaseH.layer.borderWidth = 1
        databaseH.layer.borderColor = UIColor.blue.cgColor
        databaseH.setTitleColor(.systemPink, for: .normal)
        databaseH.setTitle("H", for: .normal)
        databaseH.contentHorizontalAlignment = .right
        return databaseH
    }()
    
    private let databaseI: UIButton = {
        let databaseI = UIButton()
        databaseI.backgroundColor = .white
        databaseI.layer.borderWidth = 1
        databaseI.layer.borderColor = UIColor.blue.cgColor
        databaseI.setTitleColor(.systemPink, for: .normal)
        databaseI.setTitle("I", for: .normal)
        databaseI.contentHorizontalAlignment = .right
        return databaseI
    }()
    
    private let databaseK: UIButton = {
        let databaseK = UIButton()
        databaseK.backgroundColor = .white
        databaseK.layer.borderWidth = 1
        databaseK.layer.borderColor = UIColor.blue.cgColor
        databaseK.setTitleColor(.systemPink, for: .normal)
        databaseK.setTitle("K", for: .normal)
        databaseK.contentHorizontalAlignment = .right
        return databaseK
    }()
    
    private let databaseL: UIButton = {
        let databaseL = UIButton()
        databaseL.backgroundColor = .white
        databaseL.layer.borderWidth = 1
        databaseL.layer.borderColor = UIColor.blue.cgColor
        databaseL.setTitleColor(.systemPink, for: .normal)
        databaseL.setTitle("L", for: .normal)
        databaseL.contentHorizontalAlignment = .right
        return databaseL
    }()
    
    private let databaseM: UIButton = {
        let databaseM = UIButton()
        databaseM.backgroundColor = .white
        databaseM.layer.borderWidth = 1
        databaseM.layer.borderColor = UIColor.blue.cgColor
        databaseM.setTitleColor(.systemPink, for: .normal)
        databaseM.setTitle("M", for: .normal)
        databaseM.contentHorizontalAlignment = .right
        return databaseM
    }()
    
    private let databaseN: UIButton = {
        let databaseN = UIButton()
        databaseN.backgroundColor = .white
        databaseN.layer.borderWidth = 1
        databaseN.layer.borderColor = UIColor.blue.cgColor
        databaseN.setTitleColor(.systemPink, for: .normal)
        databaseN.setTitle("N", for: .normal)
        databaseN.contentHorizontalAlignment = .right
        return databaseN
    }()
    
    private let databaseO: UIButton = {
        let databaseO = UIButton()
        databaseO.backgroundColor = .white
        databaseO.layer.borderWidth = 1
        databaseO.layer.borderColor = UIColor.blue.cgColor
        databaseO.setTitleColor(.systemPink, for: .normal)
        databaseO.setTitle("O", for: .normal)
        databaseO.contentHorizontalAlignment = .right
        return databaseO
    }()
    
    private let databaseP: UIButton = {
        let databaseP = UIButton()
        databaseP.backgroundColor = .white
        databaseP.layer.borderWidth = 1
        databaseP.layer.borderColor = UIColor.blue.cgColor
        databaseP.setTitleColor(.systemPink, for: .normal)
        databaseP.setTitle("P", for: .normal)
        databaseP.contentHorizontalAlignment = .right
        return databaseP
    }()
     
    private let databaseQ: UIButton = {
        let databaseQ = UIButton()
        databaseQ.backgroundColor = .white
        databaseQ.layer.borderWidth = 1
        databaseQ.layer.borderColor = UIColor.blue.cgColor
        databaseQ.setTitleColor(.systemPink, for: .normal)
        databaseQ.setTitle("Q", for: .normal)
        databaseQ.contentHorizontalAlignment = .right
        return databaseQ
    }()
    
    private let databaseR: UIButton = {
        let databaseR = UIButton()
        databaseR.backgroundColor = .white
        databaseR.layer.borderWidth = 1
        databaseR.layer.borderColor = UIColor.blue.cgColor
        databaseR.setTitleColor(.systemPink, for: .normal)
        databaseR.setTitle("R", for: .normal)
        databaseR.contentHorizontalAlignment = .right
        return databaseR
    }()
     
    private let databaseS: UIButton = {
        let databaseS = UIButton()
        databaseS.backgroundColor = .white
        databaseS.layer.borderWidth = 1
        databaseS.layer.borderColor = UIColor.blue.cgColor
        databaseS.setTitleColor(.systemPink, for: .normal)
        databaseS.setTitle("S", for: .normal)
        databaseS.contentHorizontalAlignment = .right
        return databaseS
    }()
    
    private let databaseT: UIButton = {
        let databaseT = UIButton()
        databaseT.backgroundColor = .white
        databaseT.layer.borderWidth = 1
        databaseT.layer.borderColor = UIColor.blue.cgColor
        databaseT.setTitleColor(.systemPink, for: .normal)
        databaseT.setTitle("T", for: .normal)
        databaseT.contentHorizontalAlignment = .right
        return databaseT
    }()
    
    private let databaseU: UIButton = {
        let databaseU = UIButton()
        databaseU.backgroundColor = .white
        databaseU.layer.borderWidth = 1
        databaseU.layer.borderColor = UIColor.blue.cgColor
        databaseU.setTitleColor(.systemPink, for: .normal)
        databaseU.setTitle("U", for: .normal)
        databaseU.contentHorizontalAlignment = .right
        return databaseU
    }()
     
     

    
    let Items: [Item] = [
        Item(imageName: "Collectionviewcell1"),
        Item(imageName: "Collectionviewcell2"),
        Item(imageName: "Collectionviewcell3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(settingsButton)
        
        view.addSubview(databaseA)
        view.addSubview(databaseB)
        view.addSubview(databaseC)
        view.addSubview(databaseD)
        view.addSubview(databaseE)
        view.addSubview(databaseF)
        view.addSubview(databaseG)
        view.addSubview(databaseH)
        view.addSubview(databaseI)
        view.addSubview(databaseK)
        view.addSubview(databaseL)
        view.addSubview(databaseM)
        view.addSubview(databaseN)
        view.addSubview(databaseO)
        view.addSubview(databaseP)
        view.addSubview(databaseQ)
        view.addSubview(databaseR)
        view.addSubview(databaseS)
        view.addSubview(databaseT)                  
        view.addSubview(databaseU)
        
   
        
        collectionView.register(infoCollectionViewCell.nib(), forCellWithReuseIdentifier: "infoCollectionViewCell")
        backgroundPhoto.image = UIImage(named: "BackgroundFirstPage-1")
        backgroundPhoto.contentMode = .scaleAspectFill
        
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            collectionView.backgroundColor = .none
        }
        
        
        let layout1 = UICollectionViewFlowLayout()
        let cellSize = CGSize(width: 200, height: 30)
        layout1.itemSize = cellSize
        layout1.minimumLineSpacing = 2.0
        layout1.minimumInteritemSpacing = 2.0
        
        collectionView.setCollectionViewLayout(layout1, animated: true)
        collectionView.delegate = self
        collectionView.dataSource = self
        layout1.scrollDirection = .horizontal
        
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        settingsButton.frame = CGRect(x: 765, y: 1110, width: 30, height: 30)
        
        let w = 300
        let x = 450
        let h = 40
        
        databaseA.frame = CGRect(x: 100, y: 80, width: w, height: h)
        databaseB.frame = CGRect(x: 100, y: 140, width: w, height: h)
        databaseC.frame = CGRect(x: 100, y: 200, width: w, height: h)
        databaseD.frame = CGRect(x: 100, y: 260, width: w, height: h)
        databaseE.frame = CGRect(x: 100, y: 320, width: w, height: h)
        databaseF.frame = CGRect(x: 100, y: 380, width: w, height: h)
        databaseG.frame = CGRect(x: 100, y: 440, width: w, height: h)
        databaseH.frame = CGRect(x: 100, y: 500, width: w, height: h)
        databaseI.frame = CGRect(x: 100, y: 560, width: w, height: h)
        databaseK.frame = CGRect(x: 100, y: 620, width: w, height: h)
        databaseL.frame = CGRect(x: x, y: 80, width: w, height: h)
        databaseM.frame = CGRect(x: x, y: 140, width: w, height: h)
        databaseN.frame = CGRect(x: x, y: 200, width: w, height: h)
        databaseO.frame = CGRect(x: x, y: 260, width: w, height: h)
        databaseP.frame = CGRect(x: x, y: 320, width: w, height: h)
        databaseQ.frame = CGRect(x: x, y: 380, width: w, height: h)
        databaseR.frame = CGRect(x: x, y: 440, width: w, height: h)
        databaseS.frame = CGRect(x: x, y: 500, width: w, height: h)
        databaseT.frame = CGRect(x: x, y: 560, width: w, height: h)
        databaseU.frame = CGRect(x: x, y: 620, width: w, height: h)
    }
}
extension firstPageViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
extension firstPageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "infoCollectionViewCell", for: indexPath) as! infoCollectionViewCell
        
        cell.imageView.image = UIImage(named: Items[indexPath.item].imageName)
        return cell
    }

    
}
extension firstPageViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 380)
    }
}
