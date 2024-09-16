class User
    def initialize(name)
        @name = name
    end
    def hello
        puts "My name is #{@name}."
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

suzuki = AdminUser.new("suzuki")
suzuki.hello
suzuki.admin_hello

# 親クラスの確認
puts Integer.superclass
puts Numeric.superclass
puts Object.superclass