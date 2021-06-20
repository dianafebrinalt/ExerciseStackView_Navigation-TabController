//
//  DaftarBukuViewController.swift
//  App Perpustakaan Ecek-ecejk
//
//  Created by Diana Febrina Lumbantoruan on 05/06/21.
//

import UIKit

class DaftarBukuViewController: UIViewController {

    @IBOutlet weak var judulBesar: UILabel!
    @IBOutlet weak var daftarBuku1: UIStackView!
    @IBOutlet weak var daftarBuku2: UIStackView!
    @IBOutlet weak var daftarBuku3: UIStackView!
    
    var buku = [(UIImage(named: "buku1"), "You Are Your Only Limit", "by Yurike Kato", "Sinopsis", "Sometimes, we always want limit our self, but we never know that we are have so many strenghts and we can reach our dream, because nothing is Impossible, Trust Me."),
        (UIImage(named: "buku2"), "Milk and Honey", "by Haruku Utsari", "Sinopsis", "Milk and Honey is like You, beside your heart is like milk, but you are my honey. And I Love youuuuu so much moi Milk and Honey. AAAAAA! DAMN, you are so sweetttt baby."),
        (UIImage(named: "buku3"),"Good or God's", "Sinopsis", "Good and God's it seems like same, because what? God is Good, Good is represent God's Heart, isn't it? Yeaaaaa, So grateful to have God whom the heart is kind, and good all the time."),
        (UIImage(named: "blank"), "I dont Know", "Nothing", "Sinopsis", "Lorem Ipsum")] as [Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        AddTapped(parameter: &daftarBuku1)
        AddTapped(parameter: &daftarBuku2)
        AddTapped(parameter: &daftarBuku3)
    }
    
    func AddTapped(parameter : inout UIStackView){
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.resultAfterTapped)))
    }
    
    @objc func resultAfterTapped(gesture : UITapGestureRecognizer){
        guard let controller = UIStoryboard(
                name: "Main",
                bundle: nil).instantiateViewController(identifier: "MoreDetailViewControllerScene") as? MoreDetailViewController
        else {
            return
        }
        
        switch gesture.view as? UIStackView {
        case (daftarBuku1):
            controller.deskripsi = buku[0] as! (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
        case (daftarBuku2):
            controller.deskripsi = buku[1] as! (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
        case (daftarBuku3):
            controller.deskripsi = buku[2] as! (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
        default:
            controller.deskripsi = buku[3] as! (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
        }
        
        self.present(controller, animated: true, completion: nil)
    }

}
