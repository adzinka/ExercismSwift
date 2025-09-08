func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate) * 8
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    return ((Double(hourlyRate) - Double(hourlyRate) * discount / 100) * 8 * 22).rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    return (budget / (monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount) / 22)).rounded(.down)
}
