puts "あっち向いてホイを始めます。"

def janken 
  puts "じゃんけん..."
  puts "[0]:グー/[1]:チョキ/[2]:パー" 
  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = ["グー", "チョキ","パー"]
  puts "ポン！"
  puts "あなたの手:#{jankens[player_hand]}, 相手の手:#{jankens[program_hand]}"
  puts "----------------------------------------"
  
   if player_hand == program_hand
     puts "あいこ（もう一度出す手を決めてください。)"
     return true
   elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0) 
     puts "じゃんけんに勝ちました。(指をさす方向を決めてください。)"
     @result = "win"
     return false
   else
     puts "じゃんけんに負けました。(顔を向ける方向を決めてください。)"
     @result = "lose"
     return false
   end
 end
 
 def attimuitehoi
   puts "あっち向いて..."
   puts "[0]:上/[1]:下/[2]:右/[3]:左"
   player_direction = gets.to_i
   program_direction = rand(4)
   directions = ["上","下","右","左"]
   puts "ホイ！"
   puts "あなたの方向:#{directions[player_direction]}, 相手の方向:#{directions[program_direction]}"
   puts "----------------------------------------"
   
   if (player_direction == program_direction && @result == "win")
     puts "あなたの勝ちです。"
   elsif (player_direction == program_direction && @result == "lose")
     puts "あなたの負けです。"
   else 
     puts "引き分け"
   end 
 end 
 
 next_game = true
 while next_game
   next_game = janken
 end
 
 attimuitehoi
