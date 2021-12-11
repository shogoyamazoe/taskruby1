require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"

memo_type = gets.to_i

if memo_type == 1
puts "1が選択されました"
puts "拡張子を除いたファイル名を入力してください"
    
file_name = gets.chomp
CSV.open("#{file_name}.csv", "w") do |csv|

puts "文字を入力してください"
puts "入力完了後 control + D を押してください"

contents = readlines
elementNumber = contents.length
a = 0
while a < elementNumber
contents[a] = contents[a].chomp
a +=1
end
csv <<  contents
end

elsif memo_type == 2
puts "2が選択されました"
puts "拡張子を除いたファイル名を入力してください"

file_name = gets.chomp
CSV.open("#{file_name}.csv", "a") do |csv|

puts "文字を入力してください"
puts "入力完了後 control + D を押してください"

contents = readlines
elementNumber = contents.length
a = 0
while a < elementNumber
contents[a] = contents[a].chomp
a +=1
end
csv <<  contents
end

else 
puts "もう一度選択し直してください"
end
