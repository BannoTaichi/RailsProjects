puts "--- 数字を入力してください ---"

begin
    i = gets.to_f
    puts "10 / #{i} = #{10 / i}"

rescue => ex    # rescue : 例外が発生したときの処理
    puts "Error! #{ex.message}"
    puts ex.class
ensure  # ensure : 例外が発生してもしなくても最後に実行したい処理
    puts "end"
end