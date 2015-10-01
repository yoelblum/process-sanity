class SanityCheckGenerator < Rails::Generators::Base 
	source_root File.expand_path("../templates", __FILE__)
	def create_initializer_file 
		  copy_file "sanity_check.rb", "config/initializers/sanity_check.rb"
	end
end 