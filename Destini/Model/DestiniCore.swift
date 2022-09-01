import Foundation

struct DestiniCore {
    let stories: [Story] = [
        Story(
            t: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            f: ("I'll hop in. Thanks for the help!", 2),
            s: ("Better ask him if he's a murderer first.", 1)
        ),
        Story(
            t: "He nods slowly, unfazed by the question.",
            f: ("At least he's honest. I'll climb in.", 2),
            s: ("Wait, I know how to change a tire.", 3)
        ),
        Story(
            t: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            f: ("I love Elton John! Hand him the cassette tape.", 5),
            s: ("It's him or me! You take the knife and stab him.", 4)
        ),
        Story(
            t: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            f: ("The", 0),
            s: ("End", 0)
        ),
        Story(
            t: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            f: ("The", 0),
            s: ("End", 0)
        ),
        Story(
            t: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            f: ("The", 0),
            s: ("End", 0)
        )
    ]
    
    var currentStoryIndex: Int?
    
    mutating func nextStory(title: String) {
        let story: Story? = returnStoryBasedOnIndex()!
        if let story = story {
            switch(title) {
            case story.first.0: currentStoryIndex = story.first.1
            case story.second.0: currentStoryIndex = story.second.1
            default: break
            }
        }
    }
    
    func getRandomStory() -> (Story, Int) {
        let random: Int = Int.random(in: 0...stories.count - 1)
        return (stories[random], random)
    }
    
    func returnStoryBasedOnIndex() -> Story? {
        if let currentStoryIndex = currentStoryIndex {
            return stories[currentStoryIndex]
        }
        return nil
    }
    
    mutating func setCurrentStoryIndex(n: Int) {
        currentStoryIndex = n
    }
}
