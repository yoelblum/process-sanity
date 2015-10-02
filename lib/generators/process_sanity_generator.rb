class ProcessSanityGenerator < Rails::Generators::Base 
	source_root File.expand_path("../templates", __FILE__)
	def create_initializer_file 
		  copy_file "process_sanity.rb", "config/initializers/process_sanity.rb"
	end
end 