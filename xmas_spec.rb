require_relative 'xmas'

describe "#xmas should return the day quantity before christmas" do
  it "should return the day quantity before christmas" do
    today = Date.today
    days_to_xmas = xmas(today.year, today.month, today.day)
    result = 342
    expect(days_to_xmas).to eq result
  end

  it "should return 'Invalid date' if date is less than today" do
    days_to_xmas = xmas(2023, 01, 18)
    result = "Invalid date"
    expect(days_to_xmas).to eq result
  end

  it "should return a custom message if passes one day in christmas" do
    one_day_before_xmas = xmas(2024, 12, 26)
    result = "Merry Late Christmas!"
    expect(one_day_before_xmas).to eq result
  end
end
