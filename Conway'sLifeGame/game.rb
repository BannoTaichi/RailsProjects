H = 51
W = 205

def neighbors(cells, x, y)
    # x, yが0のときにフィールドの逆側にアクセスできる
    n = (-1..1).inject(0){
        |s, i| s+(-1..1).count{
            |j| cells[(y+i) % H][(x+j) % W]
        }
    }

    # p : print(debug用で後ろの出力をしてくれる)
    # p cells[(y-1) % H][(x-1) % W, 3].count

    if cells[y][x]
        n -= 1
    end
    return n
end

# 10個に2個ぐらいの割合でフィールドを作成
cells = H.times.map{W.times.map{rand < 0.1}}

# サイズの確認
p cells.size
p cells[0].size

# cells.each : 各行について繰り返す
# l.each : 各要素について繰り返す
# 生きていたら"*", 死んでいたら" "
loop{
    print "\e[1;1H]"
    cells.each{ |l| 
        l.each{ |c| 
            print (if c then "*" else " " end) 
        }; print "\n"
    }
    cells = H.times.map{|y| 
        W.times.map{|x| 
            n = neighbors(cells, x, y)
            if cells[y][x]
                # 生きていたら(true)
                n == 2 || n == 3
            else
                # 死んでいたら(false)
                n == 3
            end
        }
    }
    sleep(0.5)
}


    
