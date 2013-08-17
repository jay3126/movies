class AlternativeTitle < ActiveRecord::Base
  attr_accessible :alternative_title, :approved, :language_id, :movie_id, :user_id

  belongs_to :movie
  belongs_to :language
  belongs_to :user

  # def language
  #   self.language
  # end

  # def language=(id)
  #   Language.find self.language_id
  # end

end
