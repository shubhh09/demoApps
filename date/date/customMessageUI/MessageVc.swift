//
//  MessageVc.swift
//  date
//
//  Created by ios on 04/01/23.
//

import UIKit

class MessageVc: UIViewController {

    @IBOutlet var firstCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("its message vc")
        setupCollection()
    }
    
    private func setupCollection(){
        self.firstCV.delegate = self
        self.firstCV.dataSource = self
        
        let nib = UINib(nibName: "MessageCell", bundle: nil)
        self.firstCV.register(nib, forCellWithReuseIdentifier: "MessageCell")
        self.firstCV.reloadData()
    }
}

extension MessageVc: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: self.firstCV.frame.width - 100, height: 100)
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = firstCV.dequeueReusableCell(withReuseIdentifier: "MessageCell", for: indexPath) as! MessageCell
        return cell; 
    }
}
