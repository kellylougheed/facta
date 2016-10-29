class Fact < ActiveRecord::Base
  validates :text, presence: true, length: { minimum: 10 }
  has_many :citations
end
