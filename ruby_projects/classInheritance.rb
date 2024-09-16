class User
    def initialize(name)
        @name = name
    end
    def hello
        puts "My name is #{@name}."
    end
    def say
        hello2
    end
    
=begin
プライベートメソッドはクラスを変数に入れて実行することはできず、
クラス内のメソッドに呼び出されるのみでしか実行されない
=end
    private 
        def hello2
            puts "Hello 2 #{@name}!"
        end
end

# クラスの継承
class AdminUser < User
    def admin_hello
        puts "Hello! I am #{@name} from AdminUser."
    end
    def hello
        puts "Hello! This is OverRide!"
    end

end
sato = User.new("sato")
sato.hello
sato.say
puts "--- クラスの継承 ---"
suzuki = AdminUser.new("suzuki")
suzuki.hello
suzuki.admin_hello

# 親クラスの確認
puts "--- 親クラスの確認 ---"
puts Integer.superclass
puts Numeric.superclass
puts Object.superclass