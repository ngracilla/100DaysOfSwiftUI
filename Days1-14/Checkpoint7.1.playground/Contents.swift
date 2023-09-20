import Cocoa

/* Challenge 7.1
 
 
 Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

- The Animal class should have a legs integer property that tracks how many legs the animal has.
- The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
- The Cat class should have a matching speak() method, again with each subclass printing something different.
- The Cat class should have an isTame Boolean property, provided using an initializer.

  */

class Animal {
    let legs: Int
    
    init (legs: Int) {
        self.legs = legs
    }
}

    class Dog: Animal {
        func speak() {
            print("Woof.")
        }
    }

        final class Corgi: Dog {
            override func speak () {
                print("british Woof!")
            }
            
        }

        final class Poodle: Dog {
            override func speak () {
                print("Poodly woof!")
            }
        }

    class Cat: Animal {
        let isTame: Bool
        
        init(isTame: Bool, legs: Int) {
            self.isTame = isTame
            super.init(legs: legs)

        }
        func speak() {
            print("Meow.")
        }
    }

        final class Persian: Cat {
            override func speak() {
                print("French Meo.")
            }
        }

        final class Lion: Cat {
            override func speak() {
                print("Roooar.")
            }
        }

var bastet = Cat(isTame: false, legs: 4)
bastet.isTame
bastet.legs


var rex = Dog(legs: 3)


/* Added final to classes that shouldn't be subclassed anymore */
