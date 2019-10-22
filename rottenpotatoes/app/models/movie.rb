class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.same_director id
    director=Movie.find(id).director
    return nil if director.nil?
    Movie.where(director:director)
  end
    
end
