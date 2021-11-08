class Project < ApplicationRecord
    # This part validates that a title and description is entered
    # when creating a project in the portfolio
    validates_presence_of :title, :description 
end
