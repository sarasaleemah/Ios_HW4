//
//  secondTableVC.swift
//  homework4
//
//  Created by Haya Saleemah on 10/9/20.
//

import UIKit

class secondTableVC: UITableViewController {
    
    var songData : songsModel!

   
    override func viewDidLoad() {
        super.viewDidLoad()


}


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
//            songData.showname.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songData.songs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! secTableViewCell
        let show = songData.songs[indexPath.row].name
        // configure
//        cell.imagesong.setBackgroundImage(UIImage(named: songData.imageName), 
        cell.souglabel.text = songData.songs[indexPath.row].img
        
                cell.accessoryType = .disclosureIndicator
               cell.imagesong.image = UIImage(named: songData.songs[indexPath.row].img )
        cell.imagesong.layer.cornerRadius = cell.imagesong.frame.height / 2
        cell.imagesong.clipsToBounds = true
      
     
        return cell
    }
    override func prepare (for segue : UIStoryboardSegue , sender : Any?)
    {
        let show1 = sender as! song
        let vc = segue.destination as! ViewController
        vc.songData = show1
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let song = songData.songs[indexPath.row]
        print(song)
        performSegue(withIdentifier: "details", sender: song)
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
