
import UIKit

class ProfileAllDataViewController: UIViewController {
    
   private let profileimage:UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let editImageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkGreen")
        button.setTitle("Save changes", for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let contactsButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "darkGreen")
        button.setTitle("Contacts", for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let nameTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let descName: UILabel = {
        let label = UILabel()
        label.text = "Profile name: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ageTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let descAge: UILabel = {
        let label = UILabel()
        label.text = "Age: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weightTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let descWeight: UILabel = {
        let label = UILabel()
        label.text = "Weight: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bloodPressureTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    private let descBloodPressure: UILabel = {
        let label = UILabel()
        label.text = "Pressure: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let horoscopeTextField: UITextField = {
        let textFiled = UITextField()
        textFiled.font = UIFont.boldSystemFont(ofSize: 20)
        textFiled.borderStyle = .roundedRect
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        return textFiled
    }()
    
    
    private let descHoroscope: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Horoscope: "
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
   
    
    private let descStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
           stack.spacing = 10.0
           stack.alignment = .fill
           stack.distribution = .fillEqually
       
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private  let textFieldStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
           stack.spacing = 10.0
           stack.alignment = .fill
           stack.distribution = .fillEqually
       
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let ownStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 5
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private let alertController:UIAlertController = {
        let alert = UIAlertController(title: "Contacts", message: "Adress: Minsk. Phone: +375333932918", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        return alert
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
        view.addSubview(contactsButton)
        editImageButton.addTarget(self, action: #selector(saveChanges(_:)), for: .touchUpInside)
        contactsButton.addTarget(self, action: #selector(showContacts(_:)), for: .touchUpInside)

        let constraints = [
            profileimage.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            profileimage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            profileimage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            profileimage.bottomAnchor.constraint(equalTo: ownStackView.topAnchor, constant: -50),
            profileimage.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            profileimage.widthAnchor.constraint(equalTo: profileimage.heightAnchor),
            ownStackView.topAnchor.constraint(equalTo: profileimage.bottomAnchor),
            ownStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            ownStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ownStackView.bottomAnchor.constraint(equalTo: contactsButton.topAnchor, constant: -20),
            ownStackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/2),
            contactsButton.topAnchor.constraint(equalTo: ownStackView.bottomAnchor, constant: 20),
            contactsButton.bottomAnchor.constraint(equalTo: editImageButton.topAnchor, constant: -10),
            contactsButton.heightAnchor.constraint(equalToConstant: 60),
            contactsButton.widthAnchor.constraint(equalTo: view.widthAnchor , multiplier: 0.4),
            contactsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            editImageButton.topAnchor.constraint(equalTo: contactsButton.bottomAnchor, constant: 10),
            editImageButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            editImageButton.heightAnchor.constraint(equalToConstant: 60),
            editImageButton.widthAnchor.constraint(equalTo: view.widthAnchor , multiplier: 1/2),
            editImageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    @objc func saveChanges(_ sender: UIButton) {
        if let unwrappedImage = profileimage.image {
            ProfileClass.profileShared.profileData.profileImage = unwrappedImage
        }
        else {
            ProfileClass.profileShared.profileData.profileImage = UIImage(named: "Relax")!
        }
        if let unwrappedName = nameTextField.text {
            ProfileClass.profileShared.profileData.profileName = unwrappedName
        }
        else{
            nameTextField.textColor = .red
        }
        if let unwrappedAge = Int(ageTextField.text ?? "0") {
            ProfileClass.profileShared.profileData.age = unwrappedAge
        }
        else {
            ageTextField.textColor = .red
        }
        if let unwrappedWeight = Int(weightTextField.text ?? "0") {
            ProfileClass.profileShared.profileData.weight = unwrappedWeight
        }
        else {
            weightTextField.textColor = .red
        }
        if let unwrappedBlood = bloodPressureTextField.text {
            ProfileClass.profileShared.profileData.bloodPressure = unwrappedBlood
        }
        else {
            bloodPressureTextField.textColor = .red
        }
        if let unwrappedHoroscrope = horoscopeTextField.text {
            ProfileClass.profileShared.profileData.horoscope = unwrappedHoroscrope
        }
        else {
            horoscopeTextField.textColor = .red
        }
        self.presentingViewController!.dismiss(animated: true,
                  completion: nil)
    }
    
    @objc func showContacts(_ sender: UIButton){
        present(alertController, animated: true, completion: nil)
    }
}
