//
//  ViewController.swift
//  sample_scroll
//
//  Created by Nilay Sheth on 12/05/16.
//  Copyright © 2016 Nivida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var collection: UICollectionView!
    
    
    let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - UICollectionViewDataSource protocol -
    
    // tell the collection view how many cells to make
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 720
    }
    
    // make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
        
        cell.label.text = "SAMPLE \(indexPath.row+1)"
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let viewWidth = self.view.frame.size.width
        let size = CGSizeMake(viewWidth/3-12, viewWidth/4-20 )
        return size
    }
    // MARK: - UICollectionViewDelegate protocol -
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\((indexPath.item)+1)!")
        
        
        
        //        Toast.makeActivity(self, message: "Loading", style: .None(timeout: 300)).show()
        
        
            }

}

