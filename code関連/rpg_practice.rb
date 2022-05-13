#【勇者クラス】
class Hero
  #≪勇者の基本情報≫
  #勇者の体力をクラス変数で定義する（値は120で）
  #勇者の攻撃力を定義するクラス変数の初期化を行う

  #≪勇者の体力を取得するメソッド≫
  def 

  end

  #≪勇者の攻撃力を取得するメソッド≫
  def 
    #攻撃力を10～25の値でランダムに作成する
  end

  #≪勇者が攻撃を受けた時の体力を減らすメソッド≫
  def #引数でモンスターの攻撃力を受け取る
    #体力からモンスターの攻撃力分だけ、体力を削る処理を実装する
  end
end

#【モンスタークラス】
class Monster
  #≪モンスターの基本情報≫
  #モンスターの体力をクラス変数で定義する（値は100で）
  #勇者の攻撃力を定義するクラス変数の初期化を行う

  #≪モンスターの体力を取得するメソッド≫
  def 

  end

  #≪モンスターの攻撃力を取得するメソッド≫
  def     
    #攻撃力を10～20の値でランダムに作成する
  end

  #≪モンスターが攻撃を受けた時の体力を減らすメソッド≫
  def #引数で勇者の攻撃力を受け取る
    #体力から勇者の攻撃力分だけ、体力を削る処理を実装する
  end
end

puts "モンスターが現れた！戦闘を開始します！"

while true
  #≪インスタンス化≫
  #Heroクラスのインスタンス化
  #勇者の攻撃力を取得する

  #モンスタークラスのインスタンス化
  #モンスターの攻撃力を取得する

  puts "何をしますか？"
  puts "戦う   [1]"
  puts "逃げる [2]"
  choice_hero = gets.to_i

  case choice_hero
  when 1
    #≪勇者の攻撃のターン≫
    puts "勇者の攻撃! #{ここに勇者の攻撃力を表示}のダメージを与えた"
    #モンスターの体力を減らすメソッドを呼び出す
    if #モンスターの体力を取得するメソッドを呼び出す <= 0
      puts "戦闘に勝ちました！"
      break
    else
      puts "モンスターの体力は残り #{モンスターの体力を取得するメソッドを呼び出す}です！"
    end
    
    #≪モンスターの攻撃のターン≫
    puts "モンスターの攻撃! #{ここにモンスターの攻撃力を表示}のダメージを受けた"
    #勇者の体力を減らすメソッドを呼び出す
    if #勇者の体力を取得するメソッドを呼び出す <= 0
      puts "勇者は負けました。"
      break
    else
      puts "勇者の体力は残り #{勇者の体力を取得するメソッドを呼び出す}です！"
    end
  #≪逃げるを選択した場合≫
  when 2
    puts "無事に逃げれた！"
    break
  else
    puts "正しい数字を入力してください"
  end
end