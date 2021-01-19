coin = 100
point = 0

puts "残りコイン数：#{coin}"
puts "ポイント:#{point}"

loop do

    puts "何コイン入れる？"
    puts "[0]10コイン " "[1]20コイン " "[2]30コイン " "[3]やめる"
    
    
    
    coins = ["10","20","30","やめる"]
    bet = gets.to_i
    
    if bet == 3
        puts "またチャレンジしてね！"
       break
    elsif coin.to_i < coins[bet].to_i
       puts "#{coins[bet].to_i- coin.to_i}コイン足りないよ。またチャレンジしてね！"
       break
  
    end
    
    
    puts "#{c = coins[bet]}コインを投入しました"
    
    puts "
    -----------------
    ３回エンターを押してね"
    
    numbers = ["1","2","3","4","5","6","7","8","9"]
    
    gets
    
    puts "|" "#{num1 = numbers.sample}" "|" "|" "|"
    puts "|" "#{num2 = numbers.sample}" "|" "|" "|"
    puts "|" "#{num3 = numbers.sample}" "|" "|" "|"
    
    gets
    
    puts "|" "#{num1}" "|" "#{num4 = numbers.sample}" "|"
    puts "|" "#{num2}" "|" "#{num5 = numbers.sample}" "|"
    puts "|" "#{num3}" "|" "#{num6 = numbers.sample}" "|"
    
    gets
    
    puts "|" "#{num1}" "|" "#{num4}" "|" "#{num7 = numbers.sample}"
    puts "|" "#{num2}" "|" "#{num5}" "|" "#{num8 = numbers.sample}"
    puts "|" "#{num3}" "|" "#{num6}" "|" "#{num9 = numbers.sample}"
    
    if (num2 == num5 &&  num5== num8)
        puts "
    ☆-------------------"
        puts "おめでとう！真ん中が揃ったよ！"
        point = point.to_i + 200
        puts "200ポイントゲット"
        puts "100コインゲット"
        puts "現在のポイントは#{point}ポイントだよ"
        puts "現在のコインは#{coin = coin.to_i - coins[bet].to_i + 100}コインだよ"
        puts "
    --------------------☆"
    
    elsif (num1 == num4 && num4 == num7) 
        puts "
    ☆-------------------"
        puts "おめでとう！上段が揃ったよ！"
        point = point.to_i + 100
        puts "100ポイントゲット"
        puts "50コインゲット"
        puts "現在のポイントは#{point}ポイントだよ"
        puts "現在のコインは#{coin = coin.to_i - coins[bet].to_i + 50}コインだよ"
        puts "
    --------------------☆"
        
    elsif (num3 == num6 && num6== num9) 
        puts "
    ☆-------------------"
        puts "おめでとう！下段が揃ったよ！"
        point = point.to_i + 100
        puts "100ポイントゲット"
        puts "50コインゲット"
        puts "現在のポイントは#{point}ポイントだよ"
        puts "現在のコインは#{coin = coin.to_i - coins[bet].to_i + 50}コインだよ"
        puts "
    --------------------☆"
    
    else
        puts "
    ☆-------------------"
        puts "ざんねん、、またチャレンジしてね！"
        puts "現在のポイントは#{point}ポイントだよ"
        puts "現在のコインは#{coin = coin.to_i - coins[bet].to_i}コインだよ"
        puts "
    --------------------☆"
         
    end

end    


