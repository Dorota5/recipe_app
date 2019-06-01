class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  validates_uniqueness_of :name, scope: :recipe_id
end
