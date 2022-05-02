
import UIKit

class ProfileAllDataViewController: UIViewController {
  
    var selectedHoroscope = ""
    
    let profileimage:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let editImageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkGreen")
        button.setTitle("Save changes", for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    let nameTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    let descName: UILabel = {
        let label = UILabel()
        label.text = "Profile name: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ageTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    let descAge: UILabel = {
        let label = UILabel()
        label.text = "Age: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let weightTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    let descWeight: UILabel = {
        let label = UILabel()
        label.text = "Weight: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bloodPressureTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    let descBloodPressure: UILabel = {
        let label = UILabel()
        label.text = "Pressure: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let horoscopeTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    
    let descHoroscope: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Horoscope: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
   
    
    let descStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
           stack.spacing = 10.0
           stack.alignment = .fill
           stack.distribution = .fillEqually
       
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let textFieldStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
           stack.spacing = 10.0
           stack.alignment = .fill
           stack.distribution = .fillEqually
       
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let ownStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 5
        stack.alignment = .fill
        stack.distribution = .fillEqually
       
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor (named: "lightGreen")
       
        setUpView()
        setUpText()
    }
    
    func setUpText() {
        profileimage.image = ProfileClass.profileShared.profileData.profileImage
        nameTextField.text = ProfileClass.profileShared.profileData.profileName
        ageTextField.text = String(ProfileClass.profileShared.profileData.age)
        weightTextField.text = String(ProfileClass.profileShared.profileData.weight)
        bloodPressureTextField.text = ProfileClass.profileShared.profileData.bloodPressure
        horoscopeTextField.text = ProfileClass.profileShared.profileData.horoscope
        
    }

    func setUpView() {
        view.addSubview(profileimage)
        view.addSubview(ownStackView)
        ownStackView.addArrangedSubview(descStackView)
        ownStackView.addArrangedSubview(textFieldStackView)
        textFieldStackView.addArrangedSubview(nameTextField)
        textFieldStackView.addArrangedSubview(ageTextField)
        textFieldStackView.addArrangedSubview(weightTextField)
        textFieldStackView.addArrangedSubview(bloodPressureTextField)
        textFieldStackView.addArrangedSubview(horoscopeTextField)
        descStackView.addArrangedSubview(descName)
        descStackView.addArrangedSubview(descAge)
        descStackView.addArrangedSubview(descWeight)
        descStackView.addArrangedSubview(descBloodPressure)
        descStackView.addArrangedSubview(descHoroscope)
        view.addSubview(editImageButton)
        editImageButton.addTarget(self, action: #selector(saveChanges(_:)), for: .touchUpInside)

        let constraints = [
            profileimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            profileimage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            profileimage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            profileimage.bottomAnchor.constraint(equalTo: ownStackView.topAnchor, constant: -50),
            profileimage.heightAnchor.constraint(equalToConstant: 100),
            
            ownStackView.topAnchor.constraint(equalTo: profileimage.bottomAnchor),
            ownStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            ownStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ownStackView.bottomAnchor.constraint(equalTo: editImageButton.topAnchor, constant: -20),
            ownStackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2),
        
            editImageButton.topAnchor.constraint(equalTo: ownStackView.bottomAnchor, constant: 20),
            editImageButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
            editImageButton.heightAnchor.constraint(equalToConstant: 60),
            editImageButton.widthAnchor.constraint(equalTo: view.widthAnchor , multiplier: 1/2),
            editImageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ]
            
        NSLayoutConstraint.activate(constraints)
    }
    
    
    @objc func saveChanges(_ sender: UIButton) {
        
        ProfileClass.profileShared.profileData.profileImage = profileimage.image ?? UIImage(named: "Relax")!
        ProfileClass.profileShared.profileData.profileName = nameTextField.text ?? ""
        ProfileClass.profileShared.profileData.age =  Int(ageTextField.text ?? "") ?? 0
        ProfileClass.profileShared.profileData.weight = Int(weightTextField.text ?? "") ?? 0
        ProfileClass.profileShared.profileData.bloodPressure =  bloodPressureTextField.text ?? ""
        ProfileClass.profileShared.profileData.horoscope = horoscopeTextField.text ?? ""
    
    }
}
