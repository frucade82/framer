############################
# set new framer defaults adn device setting
Framer.Device.deviceType = "iphone-5s-spacegray-hand"
	
		
############################
# layers
xingbf = new Layer 
	x:0, y:16, 
	width:88, height:88,
	opacity: 0.1, 
	image:"images/xingbf.png"
xingbf.centerX()

leftJob = new Layer 
	x:0, y:0,
	width:640, height:1136,
	image:"images/seta1.png"
	opacity: 0
	blur: 15
	
rightJob = new Layer 
	x:0, y:0,
	width:640, height:1136,
	image:"images/seta1.png"
	opacity: 0
	blur: 15

jobScreen = new Layer 
	x:0, y:0, 
	width:640, height:1136,
	image:"images/seta1.png"
	opacity: 1
jobScreen.center()



############################
# states and state animation
jobScreen.states.add
	shrinked: {scale: 0.8}
	
jobScreen.states.animationOptions = 
	time: 0.2

leftJob.states.add
	shrinked: {	x:-540, y:0, scale: 0.80, opacity: 0.8, blur: 0}
	
leftJob.states.animationOptions = 
	time: 0.2
	delay: 0.1

rightJob.states.add
	shrinked: {	x:540, y:0, scale: 0.80, opacity: 0.8, blur: 0}
	
rightJob.states.animationOptions = 
	time: 0.2
	delay: 0.1

xingbf.states.add
	full: {opacity: 0.5}
	
xingbf.states.animationOptions =
	time: 0.2

############################
# events
jobScreen.on Events.Click, ->
	jobScreen.states.next()
	leftJob.states.next()
	rightJob.states.next()
	xingbf.states.next()

