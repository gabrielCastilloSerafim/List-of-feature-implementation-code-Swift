//This is an implementation of a progress bar with a progress view that increments in the user interface to mach a timer progress.

var totalTime = 5
var progress = 1

Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
    
    if progress <= totalTime! {
        
        //The name of the IBOutlet must be progressBar otherwise change the line below
        progressBar.progress = Float(progress) / Float(totalTime!)
        
        progress += 1
        
    } else {
        totalTime = 0
        progress = 0
        Timer.invalidate()
    }
