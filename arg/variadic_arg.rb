# 配列
def variadic_arg_arr(arg1, arg2, *others)
	p arg1
	p arg2
	p others
	"全部出力できたよ！"
end

p variadic_arg_arr(:hoge, 1, :fuga, "bar", 12)

# ハッシュ
def variadic_arg_hash(arg1, arg2, **others)
	p arg1
	p arg2
	p others
	"全部出力できたよ！(ハッシュ編)"
end

p variadic_arg_hash("foo", :bar, name: "Michael Jackson", age: 20)

# 可変部分をハッシュ形式で渡さなかった場合、エラーになる
# p variadic_arg_hash "foo", :bar, :name, "Michael Jackson"
