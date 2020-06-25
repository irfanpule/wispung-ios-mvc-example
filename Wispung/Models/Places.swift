//
//  Places.swift
//  Wispung
//
//  Created by Muhammad Irfan on 25/06/20.
//  Copyright © 2020 Muhammad Irfan. All rights reserved.
//

import Foundation
import UIKit


struct Place {
    let photo: UIImage
    let name: String
    let description: String
    let operatingHours: String
    let location: String
    let lat: Double
    let long: Double
}


// dummy data
var places: [Place] = [
    // 1
    Place(photo: UIImage(named: "Danau-Ranau")!, name: "Danau Ranau",
          description: "Danau Ranau merupakan danau terbesar ke-2 di Pulau Sumatera. Wisata air Danau Ranau menyimpan segudang atraksi, mulai dari pemandangan Gunung Seminung hingga Pulau Marisa yang berada tepat di tengah-tengah danau.",
          operatingHours: "24 jam", location: "Lampung Barat, Lampung", lat: -4.8807597, long: 103.8689425),
    // 2
    Place(photo: UIImage(named: "Gunung-Anak-Krakatau")!, name: "Gunung Anak Krakatau",
          description: "Tentu semua tahu soal gunung aktif yang terkenal berbahaya ini. Namun, siapa sangka, ternyata Gunung Anak Krakatau merupakan salah satu tujuan wisata unggulan Lampung. Wisata Krakatau menyediakan berbagai aktivitas seru seperti trekking hingga snorkeling.",
          operatingHours: "05.00-15.00", location: "Selat Sunda", lat: -6.1001329, long: 105.416837),
    // 3
    Place(photo: UIImage(named: "Air-Terjun-Putri-Malu")!, name: "Air Terjun Putri Malu",
          description: "Nama air terjun ini berasal dari bentuk arus airnya yang menyerupai punggung perempuan. Air terjun yang terletak di tengah hutan tropis ini dapat menjadi spot foto yang pas, dengan latar belakang keindahan alam air terjun dan hutan sekitarnya.",
          operatingHours: "06.00-18.00", location: "Juku Batu, Banjit, Kabupaten Way Kanan, Lampung", lat: -4.8600363, long: 104.3838799),
    // 4
    Place(photo: UIImage(named: "Pantai-Dewi-Mandapa")!, name: "Pantai Dewi Mandapa",
          description: "Pantai ini terkenal akan tema romantisme yang diusung. Memang di pantai ini banyak spot–spot foto khusus untuk couple, seperti Dermaga Asmara yang berlatar belakang hutan mangrove atau Dermaga Cinta yang denahnya berbentuk hati.",
          operatingHours: "08.00-22.00", location: "Gebang, Padang Cermin, Kabupaten Pesawaran, Lampung", lat: -5.5716812, long: 105.2427662),
    // 5
    Place(photo: UIImage(named: "Curup-Gangsa")!, name: "Curup Gangsa",
          description: """
Curup Gangsa adalah tempat wisata di Lampung selanjutnya yang menawarkan pesona air terjun dengan formasi bebatuan unik di bawahnya.

    Selain curupnya sendiri, di sekitar sini juga terdapat panorama lahan padi berundak dan atraksi kebudayaan seperti rumah adat khas setempat.
""", operatingHours: "08.00-18.00", location: "Dusun Tanjung Raya, Kampung Kota Way Kecamatan Kasui, Kabupaten Way Kanan, Lampung", lat: -4.6410266, long: 104.4097545),
    // 6
    Place(photo: UIImage(named: "Air-Terjun-Ciupang-lampung")!, name: "Air Terjun Ciupang",
          description: """
Selain Curup Gangsa, Lampung masih menyimpan pesona wisata air terjun lainnya. Air Terjun Ciupang merupakan salah satu atraksi wisata yang belum begitu ramai dijajaki-masih sangat asri dan bersih.

Hal yang paling mengesankan dari objek wisata di Lampung satu ini adalah struktur dinding jurangnya yang khas, seperti tembok bebatuan yang diukir.
""", operatingHours: "24 jam", location: "Dusun Purwajaya, Desa Sumberjaya, Kecamatan Padang Cermin, Kabupaten Pesawaran, Lampung", lat: -5.5871566, long: 105.0200191),
    // 7
    Place(photo: UIImage(named: "Bukit-Pangonan")!, name: "Bukit Pangonan",
          description: "Bukit Pangonan tidak hanya menawarkan pemandangan asri ala pepohonan hijau. Pihak pengelola tempat wisata di Lampung ini juga menawarkan berbagai atraksi, seperti spot-spot berfoto dengan background titian hati yang terbuat dari susunan bunga dan tatanan lanskap yang unik. Bukit Pangonan cocok bagi kaum muda yang gemar swafoto.",
          operatingHours: "08.00-18.00", location: "Jl. Raya Danau, Fajar Esuk, Kec. Pringsewu, Kabupaten Pringsewu, Lampung", lat: -6.452432, long: 106.0230545),
    // 8
    Place(photo: UIImage(named: "Taman-Batu-Granit-Tanjung-Bintang")!, name: "Taman Batu Granit Tanjung Bintang",
          description: """
Pelancong yang akan berkunjung ke sini wajib membawa peralatan merekamnya seperti kamera GoPro.

Betapa tidak, formasi batunya yang keren nan unik ini sangat instagrammable! Masuk ke Taman Batu ini kita terasa disuguhkan panorama bebatuan ala Afrika, lengkap dengan panorama hutan karet di sekitarnya.
""", operatingHours: "24 Jam", location: "Perkebunan Karet PTPN VII Afdeling Bergen, Purwodadi Dalam, Kecamatan Tanjung Bintang, Lampung Selatan, Lampung", lat: -5.3813992, long: 105.4448183),
    // 9
    Place(photo: UIImage(named: "Pantai-Gigi-Hiu")!, name: "Pantai Gigi Hiu",
          description: """
Nama pantai ini berasal dari keberadaan formasi bebatuan yang unik, saling menjulang ke atas bak gigi ikan hiu yang runcing.

Di Pantai Gigi Hiu, para pelancong bisa asyik berfoto ria dengan latar belakang yang sangat jarang ditemui ini.
""", operatingHours: "24 jam", location: "Desa Pegadungan, Kecamatan Kelumbayan, Kabupaten Tanggamus, Lampung", lat: -5.755844, long: 105.0554253),
    // 10
    Place(photo: UIImage(named: "Kawah-Keramikan-Suoh")!, name: "Kawah Keramikan Suoh",
          description: """
Dengan banyaknya pegunungan di Pulau Sumatera, tidak mengherankan bila di wilayahnya yang paling selatan ini, terdapat kawah yang sangat cantik.

Kawah Keramikan Suoh sekilas terlihat menantang, namun panorama alam dari objek wisata di Lampung satu ini sangat luar biasa indah sehingga membuat segalanya terasa sebanding.
""", operatingHours: "24 jam", location: "Suoh, Lampung Barat, Provinsi Lampung", lat: -5.1241137, long: 104.3179463)
]


