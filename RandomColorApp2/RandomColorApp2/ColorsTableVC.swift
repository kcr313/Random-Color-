//
//  ColorsTableVC.swift
//  RandomColorApp2
//
//  Created by kadir ecer on 21.04.2024.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors:[UIColor] = []
    enum Cells {
        static let cell = "ColorCell"
    }
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()

    }
    
    func addRandomColors(){
        for _ in 0...50{
            colors.append(.random())
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVc = segue.destination as! ColorsDetailVC
        destVc.color = sender as? UIColor
    }
 
}

extension ColorsTableVC:UITableViewDelegate,UITableViewDataSource {
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.cell)else{
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail , sender: color)
    }

    
}
