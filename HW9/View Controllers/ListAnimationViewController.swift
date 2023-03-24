//
//  ListAnimationViewController.swift
//  HW9
//
//  Created by Карина Чадаева on 23.03.23.
//

import UIKit

class ListAnimationViewController: UIViewController {

    @IBOutlet var animationListTableView: UITableView!
    
    private let animations = Animation.getAnimations()
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let animateVC = segue.destination as! AnimateViewController
        guard let indexPath = animationListTableView.indexPathForSelectedRow else { return }
        animateVC.animationChosen = animations[indexPath.row]
    }
    
}

// MARK: - Table view data source
extension ListAnimationViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let animation = animations[indexPath.row]
        cell.textLabel?.text = "Animation: \(animation.animationType)"
        cell.detailTextLabel?.text = "Curve: \(animation.curveType)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
