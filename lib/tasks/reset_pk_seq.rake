namespace :reset do
  desc "Reset primary key sequence (all tables)"
  task pk_sequence: :environment do
    ActiveRecord::Base.connection.tables.each do |table|
      ActiveRecord::Base.connection.reset_pk_sequence!(table)
    end
    puts "PK sequence reset"
  end
end
