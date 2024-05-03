class Person < ApplicationRecord
    has_many :posts, before_add: :check_total_post, dependent: :destroy

    

private

    def check_total_post
        c = self.posts.count
        puts 'Total number of posts by this user are #{c}'
    end

end
