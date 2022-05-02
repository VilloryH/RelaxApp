//
//  PlayerViewController.swift
//  RelaxApp
//
//  Created by Vitaliy Petrovskiy on 2.05.22.
//

import UIKit
import AVFoundation

class PlayerViewController: UIViewController {

    let model = TracksModel.fetchTracks()
    var player = AVAudioPlayer()
    var didPlay = false
    var currentTrack = 0
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Helvetica", size: 25)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let trackImage:UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Icon-1")
        image.layer.cornerRadius = 60
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let lastTrack: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.setImage(UIImage(systemName: "backward.end.fill"), for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let playButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.setImage(UIImage(systemName: "play.fill"), for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let nextTrack: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "lightGreen")
        button.setImage(UIImage(systemName: "forward.end.fill"), for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let buttonsStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.spacing = 30
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setUpMusic()
    }
    
    
    func setUpView() {
        view.backgroundColor = UIColor(named: "darkGreen")
        view.addSubview(titleLabel)
        view.addSubview(trackImage)
        buttonsStack.addArrangedSubview(lastTrack)
        buttonsStack.addArrangedSubview(playButton)
        buttonsStack.addArrangedSubview(nextTrack)
        view.addSubview(buttonsStack)
       
        let constraints = [
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: trackImage.topAnchor, constant: -20),
            
            trackImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            trackImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            trackImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            trackImage.bottomAnchor.constraint(equalTo: buttonsStack.topAnchor, constant: -50),
            
            buttonsStack.topAnchor.constraint(equalTo: trackImage.bottomAnchor, constant: 20),
            buttonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            buttonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            buttonsStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            buttonsStack.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func setUpMusic() {
        playButton.addTarget(self, action: #selector(playMusic(_:)), for: .touchUpInside)
        lastTrack.addTarget(self, action: #selector(forwardTR(_:)), for: .touchUpInside)
        nextTrack.addTarget(self, action: #selector(nextTR(_:)), for: .touchUpInside)
        do{
            if let audioPath = Bundle.main.path(forResource: model[currentTrack].trackName, ofType: "mp3"){
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            }
            }
            catch {
                print("Error")
            }
        titleLabel.text = model[currentTrack].nameLabel
        trackImage.image = model[currentTrack].trackAlbum
        }
        
    @objc func playMusic(_ sender:UIButton){
        if !didPlay{
        self.player.play()
        self.didPlay = true
        self.playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
        }
        else if didPlay{
            self.player.stop()
            self.didPlay = false
            self.playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        }
    }
    
    @objc func nextTR(_ sender:UIButton){
        if currentTrack < model.count - 1 {
            currentTrack += 1
        }
        else {currentTrack = 0}
        print ("\(currentTrack)")
        print ("\(model.count)")
        player.stop()
        setUpMusic()
        player.play()
    }
    
    @objc func forwardTR(_ sender:UIButton){
        if currentTrack > 0 {
            currentTrack -= 1
        }
        else {currentTrack = model.count - 1}
        print ("\(currentTrack)")
        player.stop()
        setUpMusic()
        player.play()
    }
    
}

    


