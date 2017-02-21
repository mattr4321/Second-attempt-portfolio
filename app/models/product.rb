class Product < ApplicationRecord
    validates :name, presence: true
    has_many :orders
    has_many :comments
    
    def highest_rating_comment
        comments.rating_desc.first
    end
    
    #def average_rating
    #    comments.average(:rating).to_f
    #end
    
    def cache_average_rating  
        $redis.set(redis_key(:average_rating), comments.average(:rating).to_f)
    end

    def average_rating  
        $redis.get(redis_key(:average_rating))
    end

    private

    #def redis_key(str)  
    #    &quot;product:{self.id}:{str}&quot;
    #end  
    def redis_key(str)
        "account:#{self.id}:#{str}"
    end
end
