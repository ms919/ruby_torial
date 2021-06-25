def block_arg
	# block_given?でブロックが渡されたかどうか判定
	if block_given?
		# yieldメソッドを実行すると渡されたブロックが実行される
    puts "ブロックが渡されたときの処理"
		yield
	else
		puts "ブロックが渡されなかったときの処理"
	end
end

block_arg
block_arg {puts (1..10).to_a.sample}

def block_arg_must(&b)
  b.call
end

block_arg_must {puts "block_must"}

# ブロックに引数を渡して実行
def arg_into_block(str:, &b)
  b.call(str)
end

arg_into_block str: "これを出力してくれい" do |str| puts "arg_into_block #{str}" end
# 以下はエラーになる
# arg_into_block str: "これを出力してくれい" { |str| puts "arg_into_block #{str}" }

# 引数2つ
def some_arg_into_block(str, int, &b)
  b.call(str, int)
end

some_arg_into_block "これを出力してくれい", 3 do |str, int|
  puts "ブロック処理開始"
  int.times {
    puts str
  }
  puts "ブロック処理終了"
end