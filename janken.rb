
#あっち向いてホイ
def finger_game
    yubi_dir = ["上","右","下","左"]
    puts "あっち向いて・・・"
    puts "[0]上\n[1]右\n[2]下\n[3]左"

    @player_finger = gets.to_i
    if @player_finger > 3
        puts "選び直してください"
        return finger_game
    end
    @program_finger = rand(4)

    puts "あなた：#{yubi_dir[@player_finger]}"
    puts "相手：#{yubi_dir[@program_finger]}"

end

def look_win
    finger_game()
    if @player_finger == @program_finger
        puts "あなたの勝ちです"
        return false
    else
        return true
    end
end

def look_lose
    finger_game()
    if @program_finger == @player_finger
        "あなたの負けです"
        return false
    elsif @player_finger != @program_finger
        return true
    end
end

#じゃんけん
def janken
    puts "じゃんけん・・・"
    puts "[0]グ-\n[1]チョキ\n[2]パー"
    @player_hand = gets.to_i
    if @player_hand >= 3
        puts "逃げます"
        return true
    end
    @program_hand = rand(3)
    jankens = ["グー","チョキ","パー"]
    puts "ホイ！"
    puts "あなた：#{jankens[@player_hand]}"
    puts "相手：#{jankens[@program_hand]}"
    if @player_hand == @program_hand
        puts "あいこで"
        return true
    elsif(@player_hand == 0 && @program_hand == 1)||(@player_hand == 1 && @program_hand == 2)||(@player_hand == 2 && @program_hand == 0)
        puts "じゃんけんで勝った"
        look_win()
    else
        puts "じゃんけんで負けた"
        look_lose()
    end
end


next_game = true



while next_game do
    next_game = janken()
end