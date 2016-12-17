class ScrapContent < ApplicationRecord
	has_many :h1_contents
	has_many :h2_contents
	has_many :h3_contents
	has_many :link_contents

	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	def self.fetch_data(url)
		@main_url = self.find_or_create_by(main_url: url)
		begin
      doc = Nokogiri::HTML(open(url))
      @tags = doc.search('*').map(&:name)
      if @tags.any? { |x| ["h1", "h2", "h3", "link"].include?(x) }
      	
      	if doc.search('h1').present?
	        doc.search('h1').xpath('text()').each do |h1_tag|
	        	@main_url.h1_contents.find_or_create_by(h1_data: h1_tag.text) if h1_tag.text.present?
	        end
	      end
	      if doc.search('h2').present?
	        doc.search('h2').xpath('text()').each do |h2_tag|
	        	@main_url.h2_contents.find_or_create_by(h2_data: h2_tag.text) if h2_tag.text.present?
	        end
	      end

	      if doc.search('h3').present?
	        doc.search('h3').xpath('text()').each do |h3_tag|
	        	@main_url.h3_contents.find_or_create_by(h3_data: h3_tag.text) if h2_tag.text.present?
	        end
	      end
        @links_data = doc.search('link')
        if @links_data.present?
        	@links = []
	        @links_data.each do |link|
	        	@links << link.attributes["href"].value if link.attributes.present? && link.attributes["href"].present?
	        end
	        @links.each do |link|
	        	@main_url.link_contents.find_or_create_by(link: link)
	        end
	      end
      else
      	@main_url = "require tags not found"
      end
    rescue => error
    	
    end
    return @main_url 
  end
















end
