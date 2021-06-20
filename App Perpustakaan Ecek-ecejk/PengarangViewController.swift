//
//  PengarangViewController.swift
//  App Perpustakaan Ecek-ecejk
//
//  Created by Diana Febrina Lumbantoruan on 05/06/21.
//

import UIKit

class PengarangViewController: UIViewController {

    @IBOutlet weak var labelDaftarPengarang: UILabel!
    @IBOutlet weak var pengarang1: UIStackView!
    @IBOutlet weak var pengarang2: UIStackView!
    @IBOutlet weak var pengarang3: UIStackView!
    
    var detail = [(UIImage(named: "pengarang1"), "Tsumari Kaiko", "25 Tahun", "Deskripsi", "Tsumari Kaiko is a man who have many dreams. Tsumari Kaiko was born on 19 August 1995 in Hospital. Now, He is 25 years old. He has many thropy and many award that he achieve from event that he join."),
        (UIImage(named: "pengarang2"),"Haruku Utsari", "35 Tahun", "Deskripsi", "Haruku Utsari is a dreamer person. She want to be a writer and look at now!! She get what she has dream. She was born on 13 Juli 1895."),
        (UIImage(named: "pengarang3"), "Yurike Kato", "22 Tahun", "Deskripsi", "Yurike one of older writer of the year. She is so brilliant. She hasn't any anger. She always positive person and always motivate others with her success."),
        (UIImage(named: "blank"), "I dont Know", "Nothing", "Sinopsis", "Lorem Ipsum")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        AddTapped(parameter: &pengarang1)
        AddTapped(parameter: &pengarang2)
        AddTapped(parameter: &pengarang3)
    }
    
    func AddTapped(parameter: inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.resultOfTapped)))
    }
    
    @objc func resultOfTapped(gesture: UITapGestureRecognizer){
        guard let controller = UIStoryboard(
                name: "Main",
                bundle: nil).instantiateViewController(identifier: "MoreDetailViewControllerScene") as? MoreDetailViewController
        else {
            return
        }
        
        switch gesture.view as? UIStackView {
        case (pengarang1):
            controller.deskripsi = detail[0] as! (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
        case (pengarang2):
            controller.deskripsi = detail[1] as! (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
        case (pengarang3):
            controller.deskripsi = detail[2] as! (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
        default:
            controller.deskripsi = detail[3] as! (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
        }
        
        self.present(controller, animated: true, completion: nil)
    }
}
