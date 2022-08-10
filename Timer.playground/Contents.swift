//IMPLEMENTING TIMER

var totalTimeSelected = 10  //Number of seconds that we want our timer to run

var timePassed = 0

Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
    
    if totalTimeSelected > timePassed {
        
        timePassed += 1
        print(timePassed)  //Keeps track of counting progress
        
    } else {
        //What to do when timer reaches end of counting
    }
