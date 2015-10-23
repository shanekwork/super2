#lib/tasks/import.rake

require 'csv'

desc "Imports a CSV file into an ActiveRecord table"

task :import, [:filename] => :environment do
		CSV.foreach('vow_new_small.csv', :headers => true) do |row|
		Spree::Product.create!(row.to_hash)
	end
end