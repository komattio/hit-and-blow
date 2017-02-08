def getInput()
  inputNum = gets.chomp
  inputAry = inputNum.chars
  
  if(inputAry.size != 3)
    puts "Input exceeds 3 digits."
  end

  chk = inputAry.size - inputAry.uniq.size
  if(chk > 0)
    puts "The entered values are duplicated."
  end

  return inputAry
end

ANS = 365
ansAry = ANS.to_s.chars
inputCnt = 1

while inputCnt <= 10 do
  puts "#{inputCnt}:"
  inputAry = []
  while inputAry.size != 3 do
    inputAry = getInput()
  end
  
  cnti = 0
  cntj = 0
  hit = 0
  blow = 0
  
  inputAry.each do |i|
    ansAry.each do |j|
      if(i == j && cnti == cntj)
        hit += 1
      elsif(i == j && cnti != cntj)
        blow += 1
      end
      cntj += 1
    end
    cnti += 1
    cntj = 0
  end
  
  puts "#{hit}hit, #{blow}blow"
  if(hit == 3)
    puts "You got the right answer for the #{inputCnt} time."
    break
  end
  inputCnt += 1
end

