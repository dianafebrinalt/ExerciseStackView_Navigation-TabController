//
//  PenerbitViewController.swift
//  App Perpustakaan Ecek-ecejk
//
//  Created by Diana Febrina Lumbantoruan on 05/06/21.
//

import UIKit

class PenerbitViewController: UIViewController {

    @IBOutlet weak var labelDaftarPenerbit: UILabel!
    @IBOutlet weak var penerbit1: UIStackView!
    @IBOutlet weak var penerbit2: UIStackView!
    
    var detail = [(UIImage(named: "penerbit1"), "Investigation", "Since 2001", "About", "Investigative publisher was founded in 2001 and founded by James Matulessy in Germany. Investigative publishers contain phenomenal news related to cases that have occurred and are based on investigations from the police."),
                  (UIImage(named: "penerbit2"), "Wordpress", "Since 1995", "About", "Wordpress is the oldest publisher in the world. Wordpress is more familiar than others. Wordpress was founded by Diana Lilypop on 1995. Wordpress always tells about artist's life and other.  "),
                  (UIImage(named: "blank"), "I dont Know", "Nothing", "Sinopsis", "Lorem Ipsum")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        AddTapped(parameter: &penerbit1)
        AddTapped(parameter: &penerbit2)
    }
    
    func AddTapped(parameter: inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.resultAfterTapped)))
    }
    
    @objc func resultAfterTapped (gesture: UITapGestureRecognizer){
        guard let controller = UIStoryboard(
                name: "Main",
                bundle: nil).instantiateViewController(identifier: "MoreDetailViewControllerScene") as? MoreDetailViewController
        else{
            return
        }
        
        
        switch gesture.view as? UIStackView {
        case (penerbit1):
            controller.deskripsi = detail[0]
        case (penerbit2):
            controller.deskripsi = detail[1]
        default:
            controller.deskripsi = detail[2]
        }
        
        self.present(controller, animated: true, completion: nil)
    }

}
