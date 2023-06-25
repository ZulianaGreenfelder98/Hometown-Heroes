import UIKit

class VeteransSupportViewController: UIViewController {
    
    var veterans: [Veteran] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createVeterans()
        showVeteranList()
    }
    
    // Method for creating veteran objects with various data
    func createVeterans() {
        let veteran1 = Veteran(name: "John Doe", age: 28, address: "123 Main St", branch: "Navy")
        let veteran2 = Veteran(name: "Jane Doe", age: 32, address: "456 Maple Dr", branch: "Air Force")
        let veteran3 = Veteran(name: "Bill Smith", age: 42, address: "789 Oak Ave", branch: "Army")
        let veteran4 = Veteran(name: "Sara Brown", age: 35, address: "246 Elm St", branch: "Marines")
        
        veterans.append(veteran1)
        veterans.append(veteran2)
        veterans.append(veteran3)
        veterans.append(veteran4)
    }
    
    // Method for showing a list of veterans
    func showVeteranList() {
        for veteran in veterans {
            print("Name: \(veteran.name) \n Age: \(veteran.age)\nAddress: \(veteran.address)\nBranch: \(veteran.branch)\n")
        }
    }
    
    // Method for providing financial assistance to veterans
    func provideFinancialAssistance(veteran: Veteran, amount: Int) {
        veteran.financialAssistance += amount
        print("\(veteran.name) has been provided with $\(amount) of financial assistance.")
    }
    
    // Method for providing housing assistance to veterans
    func provideHousingAssistance(veteran: Veteran, amount: Int) {
        veteran.housingAssistance += amount
        print("\(veteran.name) has been provided with $\(amount) of housing assistance.")
    }
    
    // Method for providing medical assistance to veterans
    func provideMedicalAssistance(veteran: Veteran, amount: Int) {
        veteran.medicalAssistance += amount
        print("\(veteran.name) has been provided with $\(amount) of medical assistance.")
    }
    
    // Method for connecting veterans with local organizations
    func connectVeteransWithOrganizations(veteran: Veteran, organizationName: String) {
        veteran.connections.append(organizationName)
        print("\(veteran.name) is now connected with \(organizationName).")
    }
    
    // Method for honoring veterans with awards
    func honorVeteranWithAward(veteran: Veteran, awardName: String) {
        veteran.awards.append(awardName)
        print("\(veteran.name) has been honored with the award \(awardName).")
    }
    
    // Method for providing career advice to veterans
    func provideCareerAdvice(veteran: Veteran, advice: String) {
        veteran.careerAdvice.append(advice)
        print("\(veteran.name) has been provided with the following career advice: \n\(advice)")
    }
    
    // Method for providing emotional support to veterans
    func provideEmotionalSupport(veteran: Veteran, support: String) {
        veteran.emotionalSupport.append(support)
        print("\(veteran.name) has been provided with the following emotional support: \n\(support)")
    }
    
    
}

// Class to represent veteran objects
class Veteran {
    var name: String
    var age: Int
    var address: String
    var branch: String
    var financialAssistance: Int = 0
    var housingAssistance: Int = 0
    var medicalAssistance: Int = 0
    var connections: [String] = []
    var awards: [String] = []
    var careerAdvice: [String] = []
    var emotionalSupport: [String] = []
    
    init(name: String, age: Int, address: String, branch: String) {
        self.name = name
        self.age = age
        self.address = address
        self.branch = branch
    }
}