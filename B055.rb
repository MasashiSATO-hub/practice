


input = []
input = gets.split(" ").map(&:to_i)
n = input[0]
x = input[1]

input = []
arr = Array.new(n, Array.new(4,0))
i = 0
while i < n do
    input = gets.split(" ").map(&:to_i)
    p input
    arr[i][0] = input[0]
    arr[i][1] = input[1]
    arr[i][2] = input[2]
    arr[i][3] = input[3]
    p i
    p arr[0][0]
    p arr[1][0]
    i += 1
    p arr
end

i = 0
counter = 0
answer = []
while i < n do
    a = arr[i][0]
    b = arr[i][1]
    c = arr[i][2]
    d = arr[i][3]
    print(a,b,c,d,"\n")
    if x <= a then
        answer << b
        i += 1
        
    else
        while x <= a do
            a = a+c
            counter += 1
        end
    end
end
