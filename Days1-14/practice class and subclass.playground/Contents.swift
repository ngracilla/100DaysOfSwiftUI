import Cocoa

/*
 
 Test Question: Swift Class and Subclass Creation

 Instructions: Write Swift code to create classes and subclasses based on the provided requirements. You are given a parent class (Shape) and two subclasses (Circle and Rectangle). Your task is to complete the code by creating instances of these classes and demonstrating their functionality.


*/

// Create a parent class 'Shape' with two properties: 'name' (String) and 'area' (Double). The 'name' property should be initialized in the constructor.

class Shape {
    var name: String
    var area: Double {
        fatalError("Subclasses must override the 'area' property in Shape")
    }
    
    init(name: String) {
        self.name = name
    }
}


// Create a subclass 'Circle' that inherits from 'Shape'. It should have an additional property 'radius' (Double) and override the 'area' property to calculate the area of a circle.

class Circle: Shape {
    var radius: Double
    
    init(name: String, radius:Double) {
        self.radius = radius
        super.init(name: name)
    }

    override var area: Double {
        return Double.pi * radius * radius
    }
    
    

}

// Create another subclass 'Rectangle' that inherits from 'Shape'. It should have two properties 'width' (Double) and 'height' (Double) and override the 'area' property to calculate the area of a rectangle.

class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(name: String, width: Double, height: Double) {
        self.width = width
        self.height = height
        super.init(name: name)
    }
    
    override var area: Double {
        return width * height
    }
}

// Create an instance of 'Circle' with the following attributes:
//   - Name: "Circle 1"
//   - Radius: 5.0

var bug = Circle(name: "Circle 1", radius: 5.0)
print("The area of bug is \(bug.area)")

// Create an instance of 'Rectangle' with the following attributes:
//   - Name: "Rectangle 1"
//   - Width: 6.0
//   - Height: 8.0

var mouse = Rectangle(name: "Rectangle 1", width: 6.0, height: 8.0)
print("\(mouse.name) has a width of \(mouse.width), height of \(mouse.height), and area of \(mouse.area)")


// Demonstrate the functionality by printing the name and area of both the circle and rectangle instances.

// Your output should look like this:
//   Circle 1 - Area: 78.54
//   Rectangle 1 - Area: 48.0

