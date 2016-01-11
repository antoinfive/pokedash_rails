class Search
  validates :username, presence: true

    def self.search(query)
      # where(:title, query) -> This would return an exact match of the query
      where("username like ?", "%#{query}%")
    end
end
