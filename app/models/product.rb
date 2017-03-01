class Product < ApplicationRecord
    validates :name, presence: true
    has_many :orders
    has_many :comments
    
    def highest_rating_comment
        comments.rating_desc.first
    end

    
    def cache_average_rating  
        #comments.average(:rating).to_f)
        #$redis.set(redis_key(:average_rating), 
    end
    
    def average_rating  
        comments.average(:rating).to_f
    end


    #private

 
    #def redis_key(str)
    #    "product:#{self.id}:#{str}"
    #end
end
