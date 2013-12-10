# encoding: utf-8
# A Liquid tag for Jekyll sites that allows embedding vimeo movies
# by: Gosuke Miyashita, modified by Uğur Özyılmazel @ugurozyilmazel
#
# Example usage: {% vimeo 28040685 800 600 information %}

require 'open-uri'
require 'multi_json' 

module Jekyll
  class VimeoTag < Liquid::Tag
    def initialize(tag_name, text, token)
      super
      @text = text
      @cache_dir = File.expand_path "../.vimeo-cache", File.dirname(__FILE__)
      FileUtils.mkdir_p @cache_dir
    end

    def render(context)
      if parts = @text.match(/(\d+) (\d+) (\d+) ?(information)?/)
        id, width, height, info_string = parts[1].strip, parts[2].strip, parts[3].strip, parts[4]
      end
      
      vimeo = get_vimeo(id)
      html = "<iframe src=\"http://player.vimeo.com/video/#{id}?color=ffffff&amp;title=0&amp;byline=0&amp;portrait=0\" width=\"#{width}\" height=\"#{height}\" frameborder=\"0\" webkitAllowFullScreen allowFullScreen mozallowfullscreen></iframe>"
      unless info_string.nil?
        if context.registers[:site].config.has_key?("vimeo_information_format")
          html+= context.registers[:site].config['vimeo_information_format'] % {
            :id => id,
            :title => vimeo["title"],
            :author_url => vimeo["author_url"],
            :author_name => vimeo["author_name"],
            :duration => vimeo["duration"],
            :description => vimeo["description"],
            :thumbnail_url => vimeo["thumbnail_url"],
          }
        end
      end
      return html
    end

    def get_vimeo(id)
      cache_file = File.join @cache_dir, id
      if File.exist? cache_file
        MultiJson.decode(File.read cache_file)
      else
        json = open("http://vimeo.com/api/oembed.json?url=http%3A//vimeo.com/#{id}").read
        File.open(cache_file, "w") do |io|
          io.write json
        end
        MultiJson.decode(json)
      end
    end

  end
end

Liquid::Template.register_tag('vimeo', Jekyll::VimeoTag)
