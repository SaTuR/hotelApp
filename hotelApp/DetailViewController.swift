//
//  DetailViewController.swift
//  hotelApp
//
//  Created by Jose Cordova on 1/5/18.
//  Copyright © 2018 Jose Cordova. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var imageCollectionView: UICollectionView!
    @IBOutlet weak var pages: UIPageControl!
    var hotel: Hotel = Hotel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = hotel.name
        descriptionTextView.text = hotel.description
        self.imageCollectionView.delegate = self
        self.imageCollectionView.dataSource = self
        pages.numberOfPages = hotel.imageCollection.count
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bookAction(_ sender: Any) {
        let bookAlert = UIAlertController(title: "Reservar", message:nil , preferredStyle: UIAlertControllerStyle.actionSheet)
        bookAlert.addAction(UIAlertAction(title: "Suit", style: .default, handler: { (action: UIAlertAction!) in
            print("Suit")
        }))
        bookAlert.addAction(UIAlertAction(title: "Double", style: .default, handler: { (action: UIAlertAction!) in
            print("Double")
        }))
        bookAlert.addAction(UIAlertAction(title: "Sencilla", style: .default, handler: { (action: UIAlertAction!) in
            print("Sencilla")
        }))
        bookAlert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { (action: UIAlertAction!) in
            print("Cancelar")
        }))
        present(bookAlert, animated: true, completion: nil) // Ejecuta el alert
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return hotel.imageCollection.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ImageCollectionViewCell
        cell.imageView.image = UIImage(named:hotel.imageCollection[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       return self.imageCollectionView.frame.size
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let firstCell = self.imageCollectionView.visibleCells.first
        let index = self.imageCollectionView.indexPath(for: firstCell!)
        self.pages.currentPage = (index?.row)!
    }

}
