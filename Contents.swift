import UIKit

/*
 1. შევქმნათ Class-ი SuperEnemy with properties: String name, Int hitPoints (ანუ სიცოცხლის რაოდენობა).
 სურვილისამებრ დაამატებ properties რომელიც მას აღწერს.
 */

class SuperEnemy {
    let name: String
    var hitPoints: Int
    
    init(name: String, hitPoints: Int) {
        self.name = name
        self.hitPoints = hitPoints
    }
}

//let superEnemy = SuperEnemy(name: "iOS Squad", hitPoints: 100)

/*
 2. შევქმნათ Superhero Protocol-ი.
 
 შემდეგი get only properties: String name, String alias, Bool isEvil და დიქშენარი (dictionary) superPowers [String: Int], სადაც String-ი არის სახელი და Int არის დაზიანება (damage).
 
 Method attack, რომელიც მიიღებს target SuperEnemy-ის და დააბრუნებს (return) Int-ს ანუ დარჩენილ სიცოცხლე.
 
 Method performSuperPower, რომელიც მიიღებს SuperEnemy-ის და დააბრუნებს (return) Int-ს, აქაც დარჩენილ სიცოცხლე.
 */

protocol Superhero {
    var name: String { get }
    var alias: String { get }
    var isEvil: Bool { get }
    var superPowers: [String: Int] { get }
    
    func attack(target: SuperEnemy) -> Int
    mutating func performSuperPower(target: SuperEnemy) -> Int
    
}

/*
 3. Superhero-ს extension-ი გავაკეთოთ სადაც შევქმნით method-ს რომელიც დაგვი-print-ავს ინფორმაციას სუპერ გმირზე და მის დარჩენილ superPower-ებზე.
 */

extension Superhero {
    func infoAboutSuperheroAndRemainingSuperpowers() {
        print("Superhero name: \(name)")
        print("Superhero alias: \(alias)")
        print("is Superhero Evil: \(isEvil)")
        
        if superPowers.isEmpty {
            attack(target: superEnemy)
        }
        else {
            for (superpower, damage) in superPowers {
                print("Superpower: \(superpower), Damage: \(damage)")
            }
        }
    }
}

/*
 4. შევქმნათ რამოდენიმე სუპერგმირი Struct-ი რომელიც ჩვენს Superhero protocol-ს დააიმპლემენტირებს მაგ:
 
 struct SpiderMan: Superhero და ავღწეროთ protocol-ში არსებული ცვლადები და მეთოდები.
 
 attack მეთოდში -> 20-იდან 40-ამდე დავაგენერიროთ Int-ის რიცხვი და ეს დაგენერებული damage დავაკლოთ SuperEnemy-ს სიცოცხლეს და დარჩენილი სიცოცხლე დავაბრუნოთ( return).
 
 performSuperPower-ს შემთხვევაში -> დიქშენერიდან ერთ superPower-ს ვიღებთ და ვაკლებთ enemy-ს (სიცოცხლეს ვაკლებთ). ვშლით ამ დიქშენერიდან გამოყენებულ superPower-ს. გამოყენებული superPower-ი უნდა იყოს დარანდომებული. დარჩენილ enemy-ს სიცოცხლეს ვაბრუნებთ (return).
 */

struct Nana: Superhero {
    var name: String = "Nana"
    
    var alias: String = "Vision"
    
    var isEvil: Bool = false
    
    var superPowers: [String : Int] = [
        "Correcting Errors" : 40,
        "Smiling at Enemies" : 30,
        "24/7 available to help others" : 25
    ]
    
    func attack(target: SuperEnemy) -> Int {
        var damage = Int.random(in: 20..<41 )
        target.hitPoints -= damage
        
        if target.hitPoints < 0 {
            target.hitPoints = 0
        }
        return target.hitPoints
    }
    
    mutating func performSuperPower(target: SuperEnemy) -> Int {
        if superPowers.isEmpty {
            attack(target: superEnemy)
        }
        else {
            return target.hitPoints
        }
        
        if let randomPower = superPowers.keys.randomElement() {
            let megaDamage = superPowers[randomPower] ?? 0
            target.hitPoints -= megaDamage
            
            if target.hitPoints < 0 {
                target.hitPoints = 0
            }
            superPowers.removeValue(forKey: randomPower)
        }
        return target.hitPoints
    }
}


struct Sandro: Superhero {
    var name: String = "Sandro"
    
    var alias: String = "SanPool"
    
    var isEvil: Bool = false
    
    var superPowers: [String : Int] = [
        "Defeating Others in Telling Jokes" : 40,
        "Finding Bugs" : 30,
        "Collecting Top Like Counts" : 25
    ]
    
    func attack(target: SuperEnemy) -> Int {
        var damage = Int.random(in: 20..<41 )
        target.hitPoints -= damage
        
        if target.hitPoints < 0 {
            target.hitPoints = 0
        }
        return target.hitPoints
    }
    
    mutating func performSuperPower(target: SuperEnemy) -> Int {
        if superPowers.isEmpty {
            attack(target: superEnemy)
        }
        else {
            return target.hitPoints
        }
        
        if let randomPower = superPowers.keys.randomElement() {
            let megaDamage = superPowers[randomPower] ?? 0
            target.hitPoints -= megaDamage
            
            if target.hitPoints < 0 {
                target.hitPoints = 0
            }
            superPowers.removeValue(forKey: randomPower)
        }
        return target.hitPoints
    }
}


struct Vaso: Superhero {
    var name: String = "Vaso"
    
    var alias: String = "Dr.Vaso"
    
    var isEvil: Bool = false
    
    var superPowers: [String : Int] = [
        "Patiently handling questions from others" : 40,
        "Inspiring a love for coding in others." : 30,
        "Fostering a positive atmosphere." : 35
    ]
    
    func attack(target: SuperEnemy) -> Int {
        var damage = Int.random(in: 20..<41 )
        target.hitPoints -= damage
        
        if target.hitPoints < 0 {
            target.hitPoints = 0
        }
        return target.hitPoints
    }
    
    mutating func performSuperPower(target: SuperEnemy) -> Int {
        if superPowers.isEmpty {
            attack(target: superEnemy)
        }
        else {
            return target.hitPoints
        }
        
        if let randomPower = superPowers.keys.randomElement() {
            let megaDamage = superPowers[randomPower] ?? 0
            target.hitPoints -= megaDamage
            
            if target.hitPoints < 0 {
                target.hitPoints = 0
            }
            superPowers.removeValue(forKey: randomPower)
        }
        return target.hitPoints
    }
}

/*
 5. შევქმნათ class SuperherSquad,
 რომელიც ჯენერიკ Superhero-s მიიღებს. მაგ: class SuperheroSquad<T: Superhero>.
 
 შევქმნათ array სუპერგმირების var superheroes: [T].
 
 შევქმნათ init-ი.
 შევქმნათ method რომელიც ჩამოგვითვლის სქვადში არსებულ სუპერგმირებს.
 */

class SuperHeroSquad {
    var superHeroes: [Superhero]
    
    init(superHeroes: [Superhero]) {
        self.superHeroes = superHeroes
    }
    
    func superHeroSquadMembers() {
        for superHero in superHeroes {
            print(superHero.name, superHero.alias)
        }
    }
}


/*
 6.ამ ყველაფრის მერე მოვაწყოთ ერთი ბრძოლა. 🤺🤜🏻🤛🏻
 შევქმნათ method simulateShowdown. ეს method იღებს სუპერგმირების სქვადს და იღებს SuperEnemy-ს.
 
 სანამ ჩვენი super enemy არ მოკვდება, ან კიდევ სანამ ჩვენ სუპერგმირებს არ დაუმთავრდებათ სუპერ შესაძლებლობები გავმართოთ ბრძოლა.
 
 ჩვენმა სუპერ გმირებმა რანდომად შეასრულონ superPowers, ყოველი შესრულებული superPowers-ი იშლება ამ გმირის ლისტიდან. თუ გმირს დაუმთავრდა superPowers, მას აქვს ბოლო 1 ჩვეულებრივი attack-ის განხორციელება (ამ attack განხორიციელება მხოლოდ ერთხელ შეუძლია როცა superPowers უმთავრდება).
 
 
 
 ბოლოს შედეგი დავბეჭდოთ, მოიგეს სუპერ გმირება თუ enemy-მ,
 
 ასევე კარგი იქნება თუ ორთაბრძოლის მიმდინარეობასაც დავბეჭდავთ და გამოვიყენებთ extension-ის მეთოდს.
 */

func simulateShowdown (hero: Superhero, enemy: SuperEnemy) {
    print("Fighting in the Playground")
}

extension Superhero {
    func remainingPower() {
        print("\(name), Superpower: \(superPowers.count)")
    }
}

var nana = Nana()
var sandro = Sandro()
var vaso = Vaso()

let superHeroSquad = SuperHeroSquad(superHeroes: [nana, sandro, vaso])

//superHeroSquad.superHeroSquadMembers()

let superEnemy = SuperEnemy(name: "iOS Squad", hitPoints: 100)


if nana.superPowers.isEmpty && superEnemy.hitPoints > 0 {
    let remainingHitPoints = nana.attack(target: superEnemy)
    
    print("\(nana.name) performed an attack against \(superEnemy.name)!")
    print("\(superEnemy.name)'s remaining hitPoints: \(remainingHitPoints)")
    
} else {
    
    let result = nana.performSuperPower(target: superEnemy)
    print("\(nana.name) used a superpower against \(superEnemy.name)!")
    print("\(superEnemy.name)'s Remaining Hit Points: \(superEnemy.hitPoints)")
    
}


if superEnemy.hitPoints <= 0 {
    print("\(nana.name) defeated \(superEnemy.name)! Superhero wins!")
} else {
    print("\(nana.name) couldn't defeat \(superEnemy.name). Superenemy wins!")
}

