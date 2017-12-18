import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    
    
    
    
    
    
    // creating variables space
    var x : Int
    var xreverse : Int
    var y = 550
    var expwidth = 25
    var hueofexlosion = 60
    var fadealpha = 100
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
        canvas.fillColor = Color.init(hue: 190, saturation: 30, brightness: 80, alpha: 100)
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: canvas.height)
        
        //ground
        canvas.fillColor = Color.green
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: canvas.width, height: 200)
        
        //nuke
        if y > 200{
        canvas.fillColor = Color.init(hue: 120, saturation: 40, brightness: 60, alpha: 100)
        canvas.drawEllipse(centreX: 250, centreY: y, width: 25, height: 50)
        canvas.drawRectangle(centreX: 250, centreY: y + 25, width: 40, height: 15)
            }
        
        //move things down
        y -= 1
        
        //the hole
        if expwidth > 250 {
            canvas.fillColor = Color(hue: 190, saturation: 30, brightness: 80, alpha: 100)
            canvas.drawEllipse(centreX: 250, centreY: 200, width: 250, height: 250)
        }
        
        
        //explosion
        if y < 200 {
            canvas.fillColor = Color.init(hue: hueofexlosion, saturation: 50, brightness: 80, alpha: fadealpha)
            canvas.drawShapesWithBorders = false
            canvas.drawEllipse(centreX: 250, centreY: 190, width: expwidth, height: expwidth)
            
            //second explosion
            if expwidth > 20 {
                
                canvas.fillColor = Color.init(hue: hueofexlosion - 10, saturation: 50, brightness: 80, alpha: fadealpha)
                canvas.drawShapesWithBorders = false
                canvas.drawEllipse(centreX: 250, centreY: 190, width: expwidth - 10, height: expwidth - 10)
                
            }
            
         //third explosion
            if expwidth > 30 {
                
                canvas.fillColor = Color.init(hue: hueofexlosion - 20, saturation: 50, brightness: 80, alpha: fadealpha)
                canvas.drawShapesWithBorders = false
                canvas.drawEllipse(centreX: 250, centreY: 190, width: expwidth - 20, height: expwidth - 20)
                
            }
            
            //fourth explosion
            if expwidth > 50 {
                
                canvas.fillColor = Color.init(hue: hueofexlosion - 30, saturation: 50, brightness: 80, alpha: fadealpha)
                canvas.drawShapesWithBorders = false
                canvas.drawEllipse(centreX: 250, centreY: 190, width: expwidth - 30, height: expwidth - 30)
                
            }
            
            
            if hueofexlosion > 0 {
            hueofexlosion -= 1
            }
            
            if expwidth > 250 {
                fadealpha -= 1
            }
            
           
            
            expwidth += 1
            
            }
        
        
        
        }
    
}





