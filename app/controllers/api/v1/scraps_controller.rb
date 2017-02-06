class Api::V1::ScrapsController < ApplicationController


	def index
		@array = []
		h = {}
		ScrapContent.all.each_with_index{|s,index| h["main_url_#{index}"] = [ s.main_url, {"links" => s.link_contents.map{|link| link.link}}, {"h1_data" => s.h1_contents.map{|h1| h1.h1_data.gsub( /\s+/, " " )}}, {"h2_data" => s.h2_contents.map{|h2| h2.h2_data.gsub( /\s+/, " " )}}, {"h3_data" => s.h3_contents.map{|h3| h3.h3_data.gsub( /\s+/, " " )}}  ]}
		@array.push(h) 
		render :json =>@array
	end

	def create
		@array = []
		h = {}
		s = ScrapContent.fetch_data(params[:url])
		if s.present?
			h["main_url"] = [ s.main_url, {"links" => s.link_contents.map{|link| link.link}}, {"h1_data" => s.h1_contents.map{|h1| h1.h1_data.gsub( /\s+/, " " )}}, {"h2_data" => s.h2_contents.map{|h2| h2.h2_data.gsub( /\s+/, " " )}}, {"h3_data" => s.h3_contents.map{|h3| h3.h3_data.gsub( /\s+/, " " )}}  ]
			@array.push(h)
		else
			@array = "Can't Access the url"
		end  
  	render :json =>@array
	end
end
