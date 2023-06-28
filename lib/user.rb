require "pry"

class User 
    attr_accessor :id, :username, :password
    @@users = []
    def initialize(username, password)
        @username = username
        @password = password
        @id = User.all.count + 1
        @@users << self
    end

    def self.all
        @@users
    end

    def self.seed
        users = [{
            username: "user1",
            password: "password1"
        }, {
            username: "user2",
            password: "password2"
        }]

        i = 0

        while i < users.count
            user = users[i]
            User.new(user[:username], user[:password])
            i += 1
        end
    end

    def self.find(id)
        self.all.find { |user| user.id == id}
    end
end

