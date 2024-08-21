class HomeController < ApplicationController
  def check
    val = ActiveRecord::Base.connection.execute('select 1+2 as val').first['val']
    render plain: "1+2=#{val}"

    value = ENV.fetch('RAILS_ENV') # raises
    ENV['RAILS_ENV'] # doesnt raise, simply nil
  end
end
