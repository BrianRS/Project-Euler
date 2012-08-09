#units
digits = %w(one two three four five six seven eight nine)
digits = digits.join.length

#teens
teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
teens = teens.join.length

#tens
tens = %w(twenty thirty forty fifty sixty seventy eighty ninety)
tens = tens.join.length

#hundreds
hundred = "hundred".length

sum = 0
sum += digits * 100 #100 times per hundred
sum += hundred * 100 * 9 #100 times per hundred, 9 times
sum += "and".length * 99 * 9 #99 times per hundred, 9 times
sum += tens * 10 * 10 #10 times per hundred, 10 times
sum += digits * 9 * 10 #9 times per hundred, 10 times
sum += teens * 10 #1 time per hundred, 10 times

#thousand
sum += "one".length
sum += "thousand".length

puts sum
