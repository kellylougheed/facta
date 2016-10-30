class Fact < ActiveRecord::Base
  validates :text, presence: true, length: { minimum: 10 }
  has_many :citations

  def self.search(search)
    where("text ILIKE ? OR initial_citation ILIKE ?", "%#{search}%", "%#{search}%")
  end
end