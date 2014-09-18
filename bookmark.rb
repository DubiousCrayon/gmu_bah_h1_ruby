#Create a class named Bookmark with the following:
#
#  ●	An initializer that accepts url and title parameters:
#      ○	it should set instance variables named url, title
#      ○	it should set a read only variable named last_visited
#  ●	A method named visit! which sets last_visited to the current
#         time and date (hint: the Time.now method returns an instance of Time)


class Bookmark
	def initialize(url, title)
		@url = url
		@title = title
		@last_visited = ""
	end

	# attr_accessor :url, :title
	# attr_reader :last_visited
	# --The above two lines are not specified in this implementation but would be needed to 
	#   write (url and title only) and read (url, title, and last_visited) using dot notation

	def visit!
		@last_visited = Time.now.strftime("%Y-%m-%d %H:%M:%S")
	end
end

