class Post < ApplicationRecord
    belongs_to :person
    after_save :check_length
    after_update :print_update_message
    before_destroy :print_post_is_going_to_destroy
    after_destroy :post_has_destroyed
    after_initialize :check_value
    after_create :print_create
    private

    def check_length
        puts 'one object is created'
    end

    def print_update_message
        puts 'post content is updated'
    end

    def print_post_is_going_to_destroy
        puts 'post is going to be destroy'
    end

    def post_has_destroyed
        puts 'post has been destroyed'
    end

    def check_value
        self.value = 1 if self.value.nil?
    end

    def print_create
        puts "object created"
    end
end
