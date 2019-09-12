//
//  VideoListController.swift
//  TableView
//
//  Created by Johanes Vincent Fernando on 12/09/19.
//  Copyright © 2019 SpaceColony. All rights reserved.
//

import UIKit

class VideoListController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videolist: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videolist = createArray()

        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [Video] {
        
        var tempvideos: [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "jaws") , title: "Jaws")
        let video2 = Video(image: #imageLiteral(resourceName: "avatar") , title: "Avatar")
        let video3 = Video(image: #imageLiteral(resourceName: "leviathan") , title: "Leviathan")
        let video4 = Video(image: #imageLiteral(resourceName: "deadpool") , title: "Deadpool")
        let video5 = Video(image: #imageLiteral(resourceName: "battleship") , title: "Battleship")
        
        tempvideos.append(video1)
        tempvideos.append(video2)
        tempvideos.append(video3)
        tempvideos.append(video4)
        tempvideos.append(video5)

        
        return tempvideos
    }

}
extension VideoListController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView (_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videolist.count
    }
    
    func tableView (_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videolist[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
    }
    
}

