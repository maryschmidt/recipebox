class Recipe < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  belongs_to :category
end
