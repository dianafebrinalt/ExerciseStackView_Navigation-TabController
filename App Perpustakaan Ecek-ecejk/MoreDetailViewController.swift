//
//  MoreDetailViewController.swift
//  App Perpustakaan Ecek-ecejk
//
//  Created by Diana Febrina Lumbantoruan on 06/06/21.
//

import UIKit

class MoreDetailViewController: UIViewController {

    @IBOutlet weak var imageData: UIImageView!
    @IBOutlet weak var judulGambar: UILabel!
    @IBOutlet weak var keteranganGambar: UILabel!
    @IBOutlet weak var deskripsiOfData: UILabel!
    @IBOutlet weak var penjelasanOfData: UILabel!
    
    var deskripsi: (image: UIImage?, judul: String?, keterangan: String?, descData: String?, penjelasanData: String?)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageData.image = deskripsi.image
        judulGambar.text = deskripsi.judul
        keteranganGambar.text = deskripsi.keterangan
        deskripsiOfData.text = deskripsi.descData
        penjelasanOfData.text = deskripsi.penjelasanData
        
    }
}
