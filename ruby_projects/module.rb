# モジュールとクラスの違い：モジュールは継承ができない
# モジュールはただ関数を集めたものであり、インスタンス化はできない
module Driver
    def self.run
        puts "Run"
    end
    def self.stop
        puts "Stop"
    end
end

Driver.run
Driver.stop