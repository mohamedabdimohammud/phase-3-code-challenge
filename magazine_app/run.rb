require_relative 'author'
require_relative 'magazine'
require_relative 'article'

# Create instances of authors
author1 = Author.new('Mohamed A. Mohammud')
author2 = Author.new('Walter L. Cronkite')

# Create instances of magazines
magazine1 = Magazine.new('Fashion Friday', 'Fashion')
magazine2 = Magazine.new('Tech Tuesday', 'Technology')

# Create instances of articles
article1 = Article.new(author1, magazine1, 'The Top Looks of the Met Gala 2023')
article2 = Article.new(author1, magazine2, 'The Rise of Artificial Intelligence')
article3 = Article.new(author2, magazine2, 'Tips for Aspiring Tech Entrepreneurs')

# Testing the methods
puts "Author: #{author1.name}"
puts "Author articles: #{author1.articles.map(&:title)}"
puts "Author magazines: #{author1.magazines.map(&:name)}"
puts "Author topic areas: #{author1.topic_areas}"
puts ""

puts "Author: #{author2.name}"
puts "Author articles: #{author2.articles.map(&:title)}"
puts "Author magazines: #{author2.magazines.map(&:name)}"
puts "Author topic areas: #{author2.topic_areas}"
puts ""