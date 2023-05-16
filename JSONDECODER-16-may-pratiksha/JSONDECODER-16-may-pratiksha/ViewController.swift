//
//  ViewController.swift
//  JSONDECODER-16-may-pratiksha
//
//  Created by Mac on 16/05/23.
//

import UIKit

class ViewController: UIViewController {

    var apiStoreArray:[ApiResponse] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }

    func fetchData() {
        guard let url = URL(string: "https://restcountries.com/v3.1/all?fields=") else {return}
        
        URLSession.shared.dataTask(with: url) {
            data,response,error in
            
            guard let okData = data else {return}
            
            do {
                var apiResponse = try JSONDecoder().decode([ApiResponse].self, from: okData)
                
                
            }
            catch {
                print("Error Occurs")
            }
        }.resume()
    }

}

