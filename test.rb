def display_choices
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
end

def display_acchi_muite_hoi_choices
  puts "あっち向いて〜"
  puts "0(上) 1(下) 2(左) 3(右)"
end

def get_user_choice
  display_choices
  gets.chomp.to_i
end

def get_computer_choice
  rand(3)
end

def play_acchi_muite_hoi
  display_acchi_muite_hoi_choices
  gets.chomp.to_i
end

def play_game
  loop do
    user_choice = get_user_choice
    
    if user_choice == 3
      puts "自分：戦わないを選びました"
    else
      choices = ["グー", "チョキ", "パー"]
      puts "自分：#{choices[user_choice]}を出しました"
    end
    
    computer_choice = get_computer_choice
    choices = ["グー", "チョキ", "パー"]
    puts "相手：#{choices[computer_choice]}を出しました"
    
    if user_choice != 3 && user_choice != computer_choice
      user_direction = play_acchi_muite_hoi
      computer_direction = get_computer_choice
      
      direction_choices = ["上", "下", "左", "右"]
      puts "自分：#{direction_choices[user_direction]}"
      puts "相手：#{direction_choices[computer_direction]}"
      
      if user_direction == computer_direction
        if (user_choice == 0 && computer_choice == 1) || (user_choice == 1 && computer_choice == 2) || (user_choice == 2 && computer_choice == 0)
          puts "自分の勝ち！"
        elsif (user_choice == 1 && computer_choice == 0) || (user_choice == 2 && computer_choice == 1) || (user_choice == 0 && computer_choice == 2)
          puts "相手の勝ち！"
        end
      end
    end
    
    if user_choice == computer_choice
      puts "あいこで・・・"
    end
  end
end

play_game
