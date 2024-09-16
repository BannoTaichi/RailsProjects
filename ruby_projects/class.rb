class Car
    REGION = "Tokyo"    #定数はすべて大文字
    # " @@変数 " は同一クラス全体で保持される
    @@count = 0
    # インスタンス変数 " @name " を読み書きするメソッドを自動で定義する
    attr_accessor :name
    def initialize(name)
        puts "initialize"
        @name = name
        @@count += 1
    end

    def hello
        puts "I am #{@name}."
    end
    
    def self.info
        puts "instance : #{@@count}. Region : #{REGION}."
    end
=begin
    インスタンスメソッド
    def name
        @name
    end

    " = " で終わるメソッドでは変数に代入することができる
    def name=(value)
        @name = value
    end
=end
end

kitt = Car.new("Kitt")
kitt.hello

kitt.name=("Taro")
kitt.hello

sato = Car.new("Sato")

Car.info

puts Car::REGION