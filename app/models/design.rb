class Design < ApplicationRecord
    belongs_to :collage
# validates :title, presence: true, uniqueness: {message: 'Title must be unique!!!'}
validates :title, presence: true, uniqueness: {scope: :design_url, message: 'and Design Url are not unique'}
#the line above stop only both title and design url are unique, if at least one is different allow it.
validates :description, presence: true
validates :design_url, presence: true, design_url_format: {on: :create} #this on only validates the create part not the seed files
#custom validators in model is like below
# validate :too_many_designs, on: :create
# validates :views, numericality: { less_than: 10 }
accepts_nested_attributes_for :collage



    #WHY METHODS HERE?
    # We can add search method or any of these methods in controller but it makes more sense to created here
    # at model. design.most_recent ...

    def self.search(query)
        self.where("title LIKE ?", "%#{query}%") # => this returns a full text search, means if we search one word we get the whole thing
        # self.where("title like ?", query)  => this search will return the exact typed word.
    end
    
    def self.most_recent 
        self.order(created_at: :asc)
    end

    # def uploaded_at 
    #     self.created_at.to_date #we can check for more options in class date time rails
    # end

    

end

#master checking
