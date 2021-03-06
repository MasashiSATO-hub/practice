# あなたは子供たちにキャンディをプレゼントしようとしています。
# 子供たちは N 人いて、あなたは子供たちのために 2 * N 箱のキャンディ入りの箱を用意しました。
# i 番目の箱に入っているキャンディの数は A_i 個で、あなたは子供一人に 2 箱ずつキャンディ入りの箱をプレゼントするつもりです。

# なるべく子供たちに不満が出ないようにキャンディを配りたいあなたは、一番多くキャンディをもらえる子供と一番キャンディがもらえない子供で配られるキャンディの数の差が最も小さくなるようにキャンディを配ろうと思いました。

# このようにキャンディ配った時の、最も多くキャンディをもらう子供と最も少なくキャンディをもらう子供のキャンディの数の差を求めてください。

# 例えば入力例 1 の場合は次のようになります。

# 図1

# 子供は 3 人いて、あなたは 3 * 2 = 6 個の箱を用意しています。
# それぞれの箱に入っているキャンディの数はそれぞれ 3, 1, 4, 1, 5, 9 です。

# このとき、それぞれの子供に 1 + 9, 3 + 4, 1 + 5 個のキャンディを配ると、一番多くキャンディをもらえる子供は 10 個のキャンディをもらえ、一番キャンディがもらえない子供は 6 個のキャンディをもらえます。
# よってこの場合のキャンディの数の差は 10 - 6 = 4 となり、これが最もキャンディの数の差が最小になるような配り方のひとつです。

n = gets.to_i
numbers = gets
numbers = numbers.split(" ").sort.map(&:to_i)
children = []
i = 0

# print numbers,"\n"

while i < n do
    children[i] = numbers.shift + numbers.pop
    i += 1
    # print children,":",numbers,"\n"
end

# numbers.each do |f|
#     print f,":",f.class,"\n"
# end

children.sort!
# print children
answer = children.last - children.first
puts answer