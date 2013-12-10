# encoding: utf-8
require "stringex"

module Jekyll
  class CategoryListTag < Liquid::Tag
    def render(context)
      html = []
      categories = context.registers[:site].categories.keys
      dir = context.registers[:site].config['category_dir']
      categories.sort.each do |category|
        posts_in_category = context.registers[:site].categories[category].size
        html << "<li><a class=\"category\" href=\"/#{dir}/#{category.to_url}/\">#{category}</a> [ #{posts_in_category} ]</li>"
      end
      html.join("\n")
    end
  end
end

Liquid::Template.register_tag('category_list', Jekyll::CategoryListTag)
