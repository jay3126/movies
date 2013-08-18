class MovieLanguage < ActiveRecord::Base
  attr_accessible :approved, :language_id, :movie_id, :user_id
  belongs_to :language
  belongs_to :movie
  belongs_to :user

  validates_presence_of :language_id, :movie_id, :user_id

end
