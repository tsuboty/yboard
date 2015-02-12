class MapviewController < ApplicationController
	def index
		@users = User.all
		@lat = @users[0].lat
		@lon = @users[0].lon
		@elat = @users[@users.length-1].lat
		@elon = @users[@users.length-1].lon
		@json = @users.to_json


		@waypoints = []

		@users.each_with_index do |u,i|
			@waypoints[i] = {location: u.lat.to_s + "," + u.lon.to_s}
		end



	end
end
