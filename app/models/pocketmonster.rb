class Pocketmonster < ActiveRecord::Base
  belongs_to :trainer
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
