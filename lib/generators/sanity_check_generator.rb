class SanityCheckGenerator < Rails::Generators::Base 
	def create_initializer_file 
		create_file "config/initializers/sanitycheck.rb"
	end
end 