require 'active_record'

ActiveRecord::Base.establish_connection(:adapter => 'db', :database => "#{File.dirname(__FILE__)}/../db/week-3-assessment-yellowpages.db")