import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var xreverse : Int
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        xreverse = 250
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Clear the background
        canvas.fillColor = Color.white
        // canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: canvas.height)
        
        // Change position
        x += 1
        xreverse -= 1
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
        canvas.drawEllipse(centreX: xreverse, centreY: 150, width: 50, height: 50)
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        canvas.drawEllipse(centreX: xreverse, centreY: 350, width: 50, height: 50)
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        
        
        canvas.drawEllipse(centreX: 50, centreY: x, width: 50, height: 50)
        canvas.drawEllipse(centreX: 150, centreY: xreverse, width: 50, height: 50)
        canvas.drawEllipse(centreX: 250, centreY: x, width: 50, height: 50)
        canvas.drawEllipse(centreX: 350, centreY: xreverse, width: 50, height: 50)
        canvas.drawEllipse(centreX: 450, centreY: x, width: 50, height: 50)
        
        
        
        
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 50, width: 20, height: 20)
        canvas.drawEllipse(centreX: xreverse, centreY: 150, width: 20, height: 20)
        canvas.drawEllipse(centreX: x, centreY: 250, width: 20, height: 20)
        canvas.drawEllipse(centreX: xreverse, centreY: 350, width: 20, height: 20)
        canvas.drawEllipse(centreX: x, centreY: 450, width: 20, height: 20)
        
        
        canvas.drawEllipse(centreX: 50, centreY: x, width: 20, height: 20)
        canvas.drawEllipse(centreX: 150, centreY: xreverse, width: 20, height: 20)
        canvas.drawEllipse(centreX: 250, centreY: x, width: 20, height: 20)
        canvas.drawEllipse(centreX: 350, centreY: xreverse, width: 20, height: 20)
        canvas.drawEllipse(centreX: 450, centreY: x, width: 20, height: 20)
        
        
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 50, width: 20, height: 20)
        canvas.drawEllipse(centreX: xreverse, centreY: 150, width: 20, height: 20)
        canvas.drawEllipse(centreX: x, centreY: 250, width: 20, height: 20)
        canvas.drawEllipse(centreX: xreverse, centreY: 350, width: 20, height: 20)
        canvas.drawEllipse(centreX: x, centreY: 450, width: 20, height: 20)
        
        
        canvas.drawEllipse(centreX: 50, centreY: x, width: 20, height: 20)
        canvas.drawEllipse(centreX: 150, centreY: xreverse, width: 20, height: 20)
        canvas.drawEllipse(centreX: 250, centreY: x, width: 20, height: 20)
        canvas.drawEllipse(centreX: 350, centreY: xreverse, width: 20, height: 20)
        canvas.drawEllipse(centreX: 450, centreY: x, width: 20, height: 20)
        
        
    }
    
}





