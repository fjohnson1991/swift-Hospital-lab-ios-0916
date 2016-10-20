//
//  School.swift
//  Hospital


protocol Payable {
    func wages() -> Double
}


protocol TimeOff {
    var vacationDays: Int {get set}
    func requestForVacation(days: Int) -> Bool
}

protocol Reprimand {
    func disciplineStudent(scale:Punishment) -> String
    func callParentDeliveringMessage(scale:Punishment) -> String
}

protocol Teach {
    func teachSubject(subject:Subject) -> String
}


protocol Employee: Payable, TimeOff { }

enum Punishment {
    case severe, light, medium
}

enum Subject {
    case math, science, english
}


extension Payable {
    func wages() -> Double {
        return 50_000.00
    }
}



extension TimeOff {
    func requestForVacation(days: Int) -> Bool {
        var boolToReturn = false
        if days <= vacationDays {
            boolToReturn = true
        } else {
            boolToReturn = false
        }
        return boolToReturn
    }
}

extension Reprimand {
    func disciplineStudent(scale:Punishment) -> String {
        switch scale {
        case .severe:
            return "We are expelling you from the school!"
        case .light:
            return "You're to go back to class, don't do it again."
        case .medium:
            return "Why would you think that's a good idea?! You're going to detention."
        }
    }
    
    func callParentDeliveringMessage(scale:Punishment) -> String {
        switch scale {
        case .severe:
            return "Your child has been expelled from the school."
        case .light:
            return "Your child thought it was funny to put gum in Amy's hair."
        case .medium:
            return "Your child has become a terror in the classroom."
        }

    }
}

extension Teach {
    func teachSubject(subject:Subject) -> String {
        switch subject {
        case .math:
            return "Take out your math books please."
        case .science:
            return "Time to learn the best subject of all! Science!!"
        case .english:
            return "To read or not to read. Everyone take out your english books."
        }
    }
}





