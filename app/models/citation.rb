class Citation < ActiveRecord::Base
  validates :source, presence: true, length: { minimum: 5 }
  belongs_to :fact
end
