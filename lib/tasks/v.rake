#lib/tasks/import.rake

require 'csv'

desc "Imports a CSV file into an ActiveRecord table"

task :v, [:filename] => :environment do
		CSV.foreach('v.csv', :headers => true) do |row|
		Spree::Product.create!(row.to_hash)
	end
end
