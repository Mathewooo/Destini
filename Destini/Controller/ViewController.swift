import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyText: UILabel!
    @IBOutlet weak var firstChoice: UIButton!
    @IBOutlet weak var secondChoice: UIButton!
    
    var destiniCore: DestiniCore = DestiniCore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitialStory()
    }
    
    @IBAction func onButtonPress(_ sender: UIButton) {
        let title: String? = sender.currentTitle
        if let title = title {
            destiniCore.nextStory(title: title)
            updateUI()
        }
    }
    
    func updateUI() {
        let story: Story? = destiniCore.returnStoryBasedOnIndex()!
        if let story = story {
            updateView(story: story)
        }
    }
    
    func setInitialStory() {
        let object: (Story, Int) = destiniCore.getRandomStory()
        let story: Story = object.0
        updateView(story: story)
        destiniCore.setCurrentStoryIndex(n: object.1)
    }
    
    func updateView(story: Story) {
        storyText.text = story.title
        firstChoice.setTitle(story.first.0, for: .normal)
        secondChoice.setTitle(story.second.0, for: .normal)
    }
}

