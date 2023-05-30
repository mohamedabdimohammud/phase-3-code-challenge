class Magazine
    attr_reader :name, :category
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      articles.map { |article| article.title }
    end
  
    def contributing_authors
      authors = articles.map { |article| article.author }
      authors.select { |author| authors.count(author) > 2 }.uniq
    end
  
    def articles
      Article.all.select { |article| article.magazine == self }
    end
  end
  