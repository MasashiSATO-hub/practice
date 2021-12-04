#必要なモノの個数 n 個とそれぞれの必要なモノの値段 p_i が入力されるので合計でいくらになるかを出力してください。
# 入力例 1 の場合

# 3
# 120
# 1000
# 400
# と入力されるので
# 1520
# と出力してください。

n = gets.to_i
# puts n
prices = 0

n.times{
    price = gets.to_i
    prices = prices + price
    # p prices
}

puts prices