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
    
    
    
    private let ipLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = ""
        return label
    }()
    
    let Items: [Item] = [
        Item(imageName: "Collectionviewcell1"),
        Item(imageName: "Collectionviewcell2"),
        Item(imageName: "Collectionviewcell3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(settingsButton)
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
    
    
    //func that calls device Wifi, cellular IP address
    
    func getIPAddress() -> String {
        var address: String?
        var ifaddr: UnsafeMutablePointer<ifaddrs>? = nil
        if getifaddrs(&ifaddr) == 0 {
            var ptr = ifaddr
            while ptr != nil {
                defer { ptr = ptr?.pointee.ifa_next }
                
                guard let interface = ptr?.pointee else { return "" }
                let addrFamily = interface.ifa_addr.pointee.sa_family
                if addrFamily == UInt8(AF_INET) || addrFamily == UInt8(AF_INET6) {
                    
                    // wifi = ["en0"]
                    // wired = ["en2", "en3", "en4"]
                    // cellular = ["pdp_ip0","pdp_ip1","pdp_ip2","pdp_ip3"]
                    
                    let name: String = String(cString: (interface.ifa_name))
                    if  name == "en0" || name == "en2" || name == "en3" || name == "en4" || name == "pdp_ip0" || name == "pdp_ip1" || name == "pdp_ip2" || name == "pdp_ip3" {
                        var hostname = [CChar](repeating: 0, count: Int(NI_MAXHOST))
                        getnameinfo(interface.ifa_addr, socklen_t((interface.ifa_addr.pointee.sa_len)), &hostname, socklen_t(hostname.count), nil, socklen_t(0), NI_NUMERICHOST)
                        address = String(cString: hostname)
                    }
                }
            }
            freeifaddrs(ifaddr)
        }
        return address ?? ""
    }
    
}
extension firstPageViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 380)
    }
}
