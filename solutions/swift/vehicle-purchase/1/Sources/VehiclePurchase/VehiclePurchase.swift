func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    var monthlyPayment = price / 12 / 5
    var monthlyBudgetWithTenPercent = monthlyBudget * 1.1
    return if (monthlyBudget >= monthlyPayment) {
        "Yes! I'm getting a \(vehicle)"
    } else if (monthlyBudgetWithTenPercent >= monthlyPayment) {
        "I'll have to be frugal if I want a \(vehicle)"
    } else {
        "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    return if (wheels == 2 || wheels == 3) {
        "You will need a motorcycle license for your vehicle"
    } else if (wheels == 4 || wheels == 6) {
        "You will need an automobile license for your vehicle"
    } else if (wheels == 18) {
        "You will need a commercial trucking license for your vehicle"
    } else {
        "We do not issue licenses for those types of vehicles"
    }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    return if (yearsOld < 3) {
        Int(Double(originalPrice) * 0.8)
    } else if (yearsOld >= 3 && yearsOld < 10) {
        Int(Double(originalPrice) * 0.7)
    } else {
        Int(Double(originalPrice) * 0.5)
    }
}
