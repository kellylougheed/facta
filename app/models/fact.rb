class Fact < ActiveRecord::Base
  validates :text, presence: true, length: { minimum: 10 }
end
