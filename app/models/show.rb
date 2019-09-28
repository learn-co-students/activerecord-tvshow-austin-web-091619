class Show < ActiveRecord::Base

    def self.highest_rating
       maxrating = Show.maximum("rating")
       maxrating
    end

    def self.most_popular_show
        rating = self.highest_rating
       show = self.find_by rating: rating
       show   
    end

    def self.lowest_rating
        rating = Show.minimum("rating")
        rating
    end

    def self.least_popular_show
        rating = self.lowest_rating
        show = self.find_by rating: rating
        show
    end

    def self.ratings_sum
        self.sum("rating")
    end

    def self.popular_shows
        self.where("rating >= 5")
    end

    def self.shows_by_alphabetical_order
        self.order(name: :asc)
    end
end