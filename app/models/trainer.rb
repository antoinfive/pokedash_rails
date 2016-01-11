class Trainer < ActiveRecord::Base
  has_secure_password
  has_many :pocketmonsters
  validates :name, :username, presence: true
  validates :username, uniqueness: { case_sensitive: true }

  def self.search(query)
    where("username like ?", "%#{query}%")
  end

end
