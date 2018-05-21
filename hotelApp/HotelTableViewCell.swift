//
//  HotelTableViewCell.swift
//  hotelApp
//
//  Created by Jose Cordova on 1/5/18.
//  Copyright © 2018 Jose Cordova. All rights reserved.
//

import UIKit

class HotelTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hotelImage: UIImageView!
    
    var hotel: Hotel = Hotel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    private func configure(name: String, image: UIImage){
        self.nameLabel.text = name
        self.hotelImage.image = image
    }
    
    func configure(hotel: Hotel){
        self.configure(name: hotel.name, image: hotel.image)
    }
    
    class func loadFromNib() -> HotelTableViewCell {
        let view = Bundle.main.loadNibNamed("HotelTableViewCell", owner: self, options: nil)?.first
        
        return view as! HotelTableViewCell
    }
    
}
