import Cocoa

/*
 
Make a function, progressBar, that displays a Double percentage as a graphical progress bar of 10 lengths.
 Distinguish between empty and full progress points, and
 provide an Emoji for more than 100% effort.
 
 I managed to break this badly, still not working in Swift. Notion got sorted, tho.
 
 */

func slice (_ str: String, _ start: Int, _ end: Int ) -> String {
    String((str.dropFirst(start-1)).prefix(end))
}

func progressBar (_ progress: Double) -> String {
    
    var bar = ""
    /* overachieve case */
    (progress.rounded() > 100) ? bar = "▓▓▓▓▓▓▓▓▓▓🚀" :
        /* or 100% case */
        (progress.rounded() > 95) ? bar = "▓▓▓▓▓▓▓▓▓▓" :
        /* or build bars */
        bar = slice ("▓▓▓▓▓▓▓▓▓▓", 1, Int(myProgress.rounded()/10))
        /* set empty progress */
            + slice ("░░░░░░░░░░", 1, 10 - Int(myProgress.rounded()/10))
        /* and concat all cases with percentage metric */
    bar += " " + String(Int(myProgress.rounded())) + "%"

}

var myProgress = 150.5
progressBar(myProgress)


/*

 Notion original code:
 
 if(round(prop("Progress") * 100) < 5, "░░░░░░░░░░", if(round(prop("Progress") * 100) >= 95, "▓▓▓▓▓▓▓▓▓▓", slice("▓▓▓▓▓▓▓▓▓▓", 1, round(prop("Progress") * 10) + 1) + slice("░░░░░░░░░░", 1, 11 - round(prop("Progress") * 10)))) + " " + format(round(prop("Progress") * 100)) + "%"
 
 
 Translate to Ternary operator with flair:
 
 (round(prop("Progress") * 100) > 100) ? ("🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩 🚀" + " " + format(round(prop("Progress") * 100)) + "%") : (slice("▓▓▓▓▓▓▓▓▓▓", 0, floor(prop("Progress") * 10)) + slice("░░░░░░░░░░", 0, ceil(10 - prop("Progress") * 10)) + " " + format(round(prop("Progress") * 100)) + "%")
 
 
 */
