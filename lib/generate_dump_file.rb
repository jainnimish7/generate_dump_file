require "generate_dump_file/version"
require 'rails'

module GenerateDumpFile
  def self.hello
    puts "Hello User"
  end

	def self.create
		system 'mkdir temporary' unless File.directory?('temporary')

		config   = Rails.configuration.database_configuration
		host     = config[Rails.env]["host"]
		database = config[Rails.env]["database"]
		username = config[Rails.env]["username"]
		password = config[Rails.env]["password"]
    flag = false
    if config.present?
  	  if config[Rails.env]["adapter"] == "postgresql"
        if host.present?
  	  	  system "pg_dump -F c -v -U #{username} -h #{host} #{database} -f temporary/$(date +%F__%T).psql"
          flag = true
        else
          system "pg_dump -F c -v -U #{username} #{database} -f temporary/$(date +%F__%T).psql"
          flag = true
        end
  	  elsif config[Rails.env]["adapter"] == "mysql2"
        if host.present?
  	     system "mysqldump -u #{username} -p#{password} -h#{host} #{database} > temporary/$(date +%F__%T).sql"
         flag = true
        else
          system "mysqldump -u #{username} -p#{password} #{database} > temporary/$(date +%F__%T).sql"
          flag = true
        end
  	  else
  	  	puts "Unknown database "
  	  end
      puts "Successfully created dump file in temporary directory." if flag
    else
      puts "Please require this: require File.expand_path('../config/environment', __FILE__)"
    end
  rescue => e
  	puts "Error occured: #{e}"
	end  
end
