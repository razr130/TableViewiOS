//
//  VideoCell.swift
//  TableView
//
//  Created by Johanes Vincent Fernando on 12/09/19.
//  Copyright © 2019 SpaceColony. All rights reserved.
//

import UIKit

class VideoCell: UITableViewCell {
    
    @IBOutlet weak var ImgVideo: UIImageView!
    @IBOutlet weak var LblVideoTitle: UILabel!
    
    
    func setVideo(video: Video) {
        ImgVideo.image = video.image
        LblVideoTitle.text = video.title
    }
    

}
