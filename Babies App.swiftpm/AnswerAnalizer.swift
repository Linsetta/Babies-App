class AnswerAnalyser { 
    func processAnswer(text:String) -> String {
        return   
        text.lowercased().contains("yes") ? " Let us introduce ourselves" : " You are the lonely sole"
    }
}
