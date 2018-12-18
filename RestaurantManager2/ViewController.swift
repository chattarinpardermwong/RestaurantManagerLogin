//
//  ViewController.swift
//  RestaurantManager2
//
//  Created by Chattarin.par1 on 26/11/2561 BE.
//  Copyright © 2561 ios. All rights reserved.
//

import UIKit
import FirebaseUI


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginTapped(_ sender: UIButton) {
        
        //Get default UI OBJ
        let authUI = FUIAuth.defaultAuthUI()
        guard authUI != nil else{
            //log the errir
            return
        }
        //Set Ourselves as the delegate
        authUI?.delegate = self
        
        //get a reference to the auth UI view Controller
        let authViewController = authUI!.authViewController()
        
        //showit
        present(authViewController, animated: true, completion: nil)
        
        
    }
    
    //mark: table view delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TablesTableViewCell") as! TablesTableViewCell
        return cell
    }
    
    //mark: collection view delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InsideCollectionViewCell", for: indexPath) as! InsideCollectionViewCell
        return cell
    }
    
    
}


extension ViewController: FUIAuthDelegate{
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        //check if there was as error
//        guard error == nil else{
//            //log the error
//            return
//        }same as downward.
        
        if error != nil {
            // log error
            return
        }
        
        //authDataResult?.user.uid
        
        performSegue(withIdentifier: "goHome", sender: self)
    }
}
