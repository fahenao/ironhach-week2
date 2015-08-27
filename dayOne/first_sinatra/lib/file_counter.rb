class FileManager
	def initialize(file)
		@file = file
	end

	def count_words
		puts file_content = @file.read
		file_content.split.length
	end
end
	