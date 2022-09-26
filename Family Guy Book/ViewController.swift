//
//  ViewController.swift
//  Family Guy Book
//
//  Created by Mahmut Şenbek on 25.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var myFamilyGuy = [FamilyGuy]()
    var choosenFamilyGuy : FamilyGuy?
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let peter = FamilyGuy(nameInıt: "Peter Griffin", jobInit: "Worker", imageInıt: UIImage(named: "peter")!, bioInıt: "In Padre de Familia, he was born in Mexico, where his mother had tried unsuccessfully to abort him. Peter agreed to abandon a revolt of his father-in-law Carter Pewterschmidt's servants in exchange for him using his connections to make Peter a United States citizen. According to I Dream of Jesus, Peter attended Providence High School. Together, Peter and Lois have three children, Chris, Meg, and baby Stewie. After a mix up at a sperm bank, Peter also became the biological father of Bertram. Previously, due to selling sperm to raise money for dial-up modem impression lessons, he also found himself the father of many other children in A House Full of Peters. Out of pity, he also adopted an intellectual talking dog named Brian, who formerly lived on the street as a stray.")
        let lois = FamilyGuy(nameInıt: "Lois Griffin", jobInit: "House Wife", imageInıt: UIImage(named: "lois")!, bioInıt: "Lois Patrice Griffin ( is the wife of Peter Griffin and mother of Meg, Chris and Stewie Griffin. Lois lives at 31 Spooner Street with her family and also Brian, the anthropomorphic family dog.")
        let meg = FamilyGuy(nameInıt: "Meg Griffin", jobInit: "Student", imageInıt: UIImage(named: "meg")!, bioInıt: "Megan, aka Megatron -Meg- Harvey Oswald Griffin is the oldest child of Lois and Peter Griffin, and the sister of Chris and Stewie Griffin. She is currently attending James Woods Regional High School.")
        let stewie = FamilyGuy(nameInıt: "Stewie Griffin", jobInit: "Baby", imageInıt: UIImage(named: "stewie")!, bioInıt: "Stewart Stewie -Gilligan- Griffin is the flamboyant and eccentric one year old infant of Peter and Lois Griffin.")
        let chris = FamilyGuy(nameInıt: "Chris Griffin", jobInit: "Student", imageInıt: UIImage(named: "chris")!, bioInıt: "Christopher Cross -Chris- Griffin is the middle child of the Griffin family." )
        let joe = FamilyGuy(nameInıt: "Joe Swanson", jobInit: "Old Soldier", imageInıt: UIImage(named: "joe")!, bioInıt: "Joseph -Joe- Swanson is a macho paraplegic police officer in the Quahog Police Department who is at many times subject to intense anger problems. He is married to Bonnie Swanson and has two children; Susie and Kevin.")
        let cleveland = FamilyGuy(nameInıt: "Cleveland", jobInit: "Postal Worker", imageInıt: UIImage(named: "cleveland")!, bioInıt: "He is the token black guy in the neighborhood and a sort of novelty in Quahog which is exemplified in his trip to Barrington Country Club in -Fore Father-. Until -The Cleveland-Loretta Quagmire-, he was married to his wife Loretta Brown, but they separated after Loretta had an affair with Glenn Quagmire, although they still have feelings for each other. Together they had a son, Cleveland Brown, Jr., whose personality and energy contrasted greatly with his father while his parents were still together. He also sports a mustache and often offers deep insight that the other characters are unable to see." )
        let quagmire = FamilyGuy(nameInıt: "Glenn Quagmire", jobInit: "Pilot", imageInıt: UIImage(named: "quagmire")!, bioInıt: "Glenn Quagmire (born Glenn Quagglechek) is the sex-crazed, perverted neighbor of the Griffins. Quagmire is a former ensign of the U.S. Navy, where he met Peter Griffin. In -Meet the Quagmires-, it is established that he already knew Peter and his future wife Lois. He currently works as an airline pilot.")
        
        myFamilyGuy.append(peter)
        myFamilyGuy.append(lois)
        myFamilyGuy.append(meg)
        myFamilyGuy.append(stewie)
        myFamilyGuy.append(chris)
        myFamilyGuy.append(joe)
        myFamilyGuy.append(cleveland)
        myFamilyGuy.append(quagmire)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFamilyGuy.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = myFamilyGuy[indexPath.row].name
        cell.contentConfiguration = content
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenFamilyGuy = myFamilyGuy[indexPath.row]
        self.performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondVC
            destinationVC.selectedFamilyGuy = choosenFamilyGuy
        }
    }
    


}

