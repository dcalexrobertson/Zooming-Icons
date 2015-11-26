//
//  MenuViewController.swift
//  Zooming Icons
//
//  Created by Alex on 2015-11-26.
//  Copyright © 2015 Alex. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MenuViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var items = [SocialItem]()

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView?.contentInset = UIEdgeInsetsMake(100, 0, 0, 0)
        
        items = getSocialItemData()
        
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return section + 2
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! SocialItemCell
    
        var index = 0
        for s in 0..<indexPath.section {
            index += collectionView.numberOfItemsInSection(s)
        }
        
        index += indexPath.item
        
        cell.configureCell(items[index])
        
        return cell
    }

    // MARK: UICollectionViewDelegate
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidth = layout.itemSize.width
        let numberOfCells = collectionView.numberOfItemsInSection(section)
        let widthOfCells = CGFloat(numberOfCells) * cellWidth + CGFloat(numberOfCells-1) * layout.minimumInteritemSpacing
        let inset = (collectionView.bounds.width - widthOfCells) / 2.0
        
        return UIEdgeInsets(top: 0, left: inset, bottom: 40, right: inset)
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        var index = 0
        for s in 0..<indexPath.section {
            index += collectionView.numberOfItemsInSection(s)
        }
        
        index += indexPath.item
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewController
        controller.currentSocialItem = items[index]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    // MARK: Social Item Data
    
    func getSocialItemData()->[SocialItem] {
        
        let items = [
            SocialItem(image: UIImage(named: "icon-twitter")!, color: UIColor(red: 0.255, green: 0.557, blue: 0.910, alpha: 1), name: "Twitter", summary: "Twitter is an online social networking service that enables users to send and read short 140-character messages called \"tweets\"."),
            SocialItem(image: UIImage(named: "icon-facebook")!, color: UIColor(red: 0.239, green: 0.353, blue: 0.588, alpha: 1), name: "Facebook", summary: "Facebook (formerly thefacebook) is an online social networking service headquartered in Menlo Park, California. Its name comes from a colloquialism for the directory given to students at some American universities."),
            SocialItem(image: UIImage(named: "icon-youtube")!, color: UIColor(red: 0.729, green: 0.188, blue: 0.180, alpha: 1), name: "Youtube", summary: "YouTube is a video-sharing website headquartered in San Bruno, California. The service was created by three former PayPal employees in February 2005 and has been owned by Google since late 2006. The site allows users to upload, view, and share videos."),
            SocialItem(image: UIImage(named: "icon-vimeo")!, color: UIColor(red: 0.329, green: 0.737, blue: 0.988, alpha: 1), name: "Vimeo", summary: "Vimeo is a U.S.-based video-sharing website on which users can upload, share and view videos. Vimeo was founded in November 2004 by Jake Lodwick and Zach Klein."),
            SocialItem(image: UIImage(named: "icon-instagram")!, color: UIColor(red: 0.325, green: 0.498, blue: 0.635, alpha: 1), name: "Instagram", summary: "Instagram is an online mobile photo-sharing, video-sharing and social networking service that enables its users to take pictures and videos, and share them on a variety of social networking platforms, such as Facebook, Twitter, Tumblr and Flickr.")
        ]
        
        return items
    }

}









