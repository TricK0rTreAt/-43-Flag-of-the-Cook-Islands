import UIKit

//藍底
var rect = CGRect(x: 0, y: 0, width: 500, height: 333)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 2/255, green: 21/255, blue: 86/255, alpha: 1)

//白橫
rect = CGRect(x: 0, y: 56, width: 250, height: 111-56)
let whiterectView1 = UIView(frame: rect)
whiterectView1.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

//白直
rect = CGRect(x: 97, y: 0, width: 153-97, height: 167)
let whiterectView2 = UIView(frame: rect)
whiterectView2.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

//紅直
rect = CGRect(x: 108, y: 0, width: 142-108, height: 167)
let redrectView2 = UIView(frame: rect)
redrectView2.backgroundColor = UIColor(red: 186/255, green: 38/255, blue: 35/255, alpha: 1)

//紅橫
rect = CGRect(x: 0, y: 67, width: 250, height: 101-67)
let redrectView1 = UIView(frame: rect)
redrectView1.backgroundColor = UIColor(red: 186/255, green: 38/255, blue: 35/255, alpha: 1)

//白橫直
backgroundView.addSubview(whiterectView2)
backgroundView.addSubview(whiterectView1)

//紅橫直
backgroundView.addSubview(redrectView1)
backgroundView.addSubview(redrectView2)

backgroundView

//---------------------------------------白色四角
let frame = CGRect(x: 0, y: 0, width: 100, height: 100)

func cornerWhiteView() -> UIView {
   
    let whiteView = UIView(frame: frame)
    whiteView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)

    let whiteViewPath = UIBezierPath()
    var
    point = CGPoint(x: 0, y: 20)
    whiteViewPath.move(to: point)
    point = CGPoint(x: 54, y: 56)
    whiteViewPath.addLine(to: point)
    point = CGPoint(x: 97, y: 56)
    whiteViewPath.addLine(to: point)
    point = CGPoint(x: 97, y: 45)
    whiteViewPath.addLine(to: point)
    point = CGPoint(x: 30, y: 0)
    whiteViewPath.addLine(to: point)
    point = CGPoint(x: 0, y: 0)
    whiteViewPath.addLine(to: point)
    
    whiteViewPath.close()

    let whiteLayer = CAShapeLayer()
    whiteLayer.path = whiteViewPath.cgPath
    whiteView.layer.mask = whiteLayer
    return whiteView
}

let view1 = cornerWhiteView()
backgroundView.addSubview(view1)

let view2 = cornerWhiteView()
view2.transform = CGAffineTransform.identity.translatedBy(x: 150, y: 0).scaledBy(x: -1, y: 1)
backgroundView.addSubview(view2)

let view3 = cornerWhiteView()
view3.transform = CGAffineTransform.identity.translatedBy(x: 0, y: 67)
.scaledBy(x: 1, y: -1)
backgroundView.addSubview(view3)

let view4 = cornerWhiteView()
view4.transform = CGAffineTransform.identity.translatedBy(x: 150, y: 67)
.scaledBy(x: -1, y: -1)
backgroundView.addSubview(view4)

backgroundView

//---------------------------------------紅色左對角

func cornerRedView() -> UIView {
   
    let redView = UIView(frame: frame)
    redView.backgroundColor = UIColor(red: 186/255, green: 38/255, blue: 35/255, alpha: 1)

    let redViewPath = UIBezierPath()
    var
    point = CGPoint(x: 0, y: 14)
    redViewPath.move(to: point)
    point = CGPoint(x: 64, y: 56)
    redViewPath.addLine(to: point)
    point = CGPoint(x: 84, y: 56)
    redViewPath.addLine(to: point)
    point = CGPoint(x: 0, y: 0)
    redViewPath.addLine(to: point)
    
    redViewPath.close()

    let redLayer = CAShapeLayer()
    redLayer.path = redViewPath.cgPath
    redView.layer.mask = redLayer
    return redView
}

let view5 = cornerRedView()
backgroundView.addSubview(view5)

let view6 = cornerRedView()
view6.transform = CGAffineTransform.identity.translatedBy(x: 150, y: 67)
.scaledBy(x: -1, y: -1)
backgroundView.addSubview(view6)

backgroundView

//---------------------------------------紅色右對角
let frame2 = CGRect(x: 0, y: 0, width: 300, height: 100)

func cornerRedthinView() -> UIView {

    let redthinView = UIView(frame: frame2)
    redthinView.backgroundColor = UIColor(red: 186/255, green: 38/255, blue: 35/255, alpha: 1)

    let redthinViewPath = UIBezierPath()
    var
    point = CGPoint(x: 153, y: 53)
    redthinViewPath.move(to: point)
    point = CGPoint(x: 153, y: 56)
    redthinViewPath.addLine(to: point)
    point = CGPoint(x: 166, y: 56)
    redthinViewPath.addLine(to: point)
    point = CGPoint(x: 250, y: 0)
    redthinViewPath.addLine(to: point)
    point = CGPoint(x: 229, y: 0)
    redthinViewPath.addLine(to: point)
    
    redthinViewPath.close()

    let redthinLayer = CAShapeLayer()
    redthinLayer.path = redthinViewPath.cgPath
    redthinView.layer.mask = redthinLayer
    return redthinView
}

let view7 = cornerRedthinView()
backgroundView.addSubview(view7)

let view8 = cornerRedthinView()
view8.transform = CGAffineTransform.identity.translatedBy(x:-50, y: 67).scaledBy(x: -1, y: -1)
backgroundView.addSubview(view8)

backgroundView

//---------------------------------------星星


let frame3 = CGRect(x: 272, y: 65, width: 207, height: 207)
let oneDegree = CGFloat.pi / 180

for i in 1...15 {
    
    let starView = UIView(frame: frame3)
    starView.backgroundColor=UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    
    let starPath = UIBezierPath()
    starPath.move(to:CGPoint(x: 375-272, y: 65-65))        //1
    starPath.addLine(to: CGPoint(x: 379-272, y: 77-65))    //2
    starPath.addLine(to: CGPoint(x: 393-272, y: 77-65))    //3
    starPath.addLine(to: CGPoint(x: 382-272, y: 85-65))    //4
    starPath.addLine(to: CGPoint(x: 386-272, y: 98-65))    //5
    starPath.addLine(to: CGPoint(x: 375-272, y: 90-65))    //6
    starPath.addLine(to: CGPoint(x: 365-272, y: 97-65))    //7
    starPath.addLine(to: CGPoint(x: 368-272, y: 85-65))    //8
    starPath.addLine(to: CGPoint(x: 358-272, y: 78-65))    //9
    starPath.addLine(to: CGPoint(x: 371-272, y: 77-65))    //10
    starPath.close()

    let starPathLayer = CAShapeLayer()
    starPathLayer.path = starPath.cgPath
    starView.layer.mask = starPathLayer

    starView.transform = CGAffineTransform.identity.rotated(by: oneDegree * 24 * CGFloat(i))
    backgroundView.addSubview(starView)
}

backgroundView
