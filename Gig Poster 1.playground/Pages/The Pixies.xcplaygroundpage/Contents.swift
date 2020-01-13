//: # Gig Poster 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![pixies-no-grid](pixies-no-grid.png "Pixies")
 ![pixies-with-grid](pixies-with-grid.png "Pixies")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let offWhite = Color(hue: 81, saturation: 5, brightness: 88, alpha: 100)
let limeGreen = Color(hue: 106, saturation: 64, brightness: 73, alpha: 100)
let black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
// Begin your solution here...
canvas.fillColor = limeGreen
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)

canvas.fillColor = black
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 400)
canvas.fillColor = limeGreen
canvas.drawShapesWithBorders = false

for ytimes in 0...10{
for times in 0...12{
canvas.drawEllipse(at: Point(x:40*times, y:ytimes*40), width: 35, height: 35)
}
}


canvas.fillColor = offWhite
for y in 0...8{
    
for x in 0...8-y {
canvas.drawEllipse(at: Point(x:40+40*y, y:360-40*x-40*y), width: 35, height: 35)

}
}




canvas.drawText(message: "pixies", at:Point(x:12.5, y:415), size: 66, kerning: 2)






for j in 1...7 {
    canvas.drawLine(from: Point(x:j*50, y:0), to: Point(x:j*50, y: 600))
}

for m in 1...11 {
    canvas.drawLine(from: Point(x:0,y:m*50), to: Point(x:400,y:m*50))
}


PlaygroundPage.current.liveView = canvas

