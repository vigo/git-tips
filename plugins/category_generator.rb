# encoding: utf-8
require "stringex"
module Jekyll
  class CategoryIndex < Page
    def initialize(site, base, category_dir, category)
      @site = site
      @base = base
      @dir  = category_dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category_index.html')
      self.data['category']    = category
      title_prefix             = site.config['category_title_prefix'] || 'Kategori: '
      self.data['title']       = "#{title_prefix}#{category}"
      meta_description_prefix  = site.config['category_meta_description_prefix'] || 'Kategori: '
      self.data['description'] = "#{meta_description_prefix}#{category}"
    end
  end

  class CategoryFeed < Page
    def initialize(site, base, category_dir, category)
      @site = site
      @base = base
      @dir  = category_dir
      @name = 'rss.xml'
      self.process(@name)
      self.read_yaml(File.join(base, '_includes/custom'), 'category_feed_rss.xml')
      self.data['category']    = category
      title_prefix             = site.config['category_title_prefix'] || 'Kategori: '
      self.data['title']       = "#{title_prefix}#{category}"
      meta_description_prefix  = site.config['category_meta_description_prefix'] || 'Kategori: '
      self.data['description'] = "#{meta_description_prefix}#{category}"
      self.data['feed_url'] = "#{category_dir}/#{name}"
    end
  end

  class Site
    def write_category_index(category_dir, category)
      index = CategoryIndex.new(self, self.source, category_dir, category)
      index.render(self.layouts, site_payload)
      index.write(self.dest)
      self.pages << index

      feed = CategoryFeed.new(self, self.source, category_dir, category)
      feed.render(self.layouts, site_payload)
      feed.write(self.dest)
      self.pages << feed
    end

    def write_category_indexes
      if self.layouts.key? 'category_index'
        dir = self.config['category_dir'] || 'categories'
        self.categories.keys.each do |category|
          self.write_category_index(File.join(dir, category.to_url), category)
        end
      else
        throw "No 'category_index' layout found."
      end
    end
  end

  class GenerateCategories < Generator
    safe true
    priority :low

    def generate(site)
      site.write_category_indexes
    end
  end


  module Filters
    def category_links(categories)
      dir = @context.registers[:site].config['category_dir']
      # puts "#{categories.class}, #{categories}"
      # categories = categories.keys if categories.class == Hash
      categories = categories.sort!.map do |item|
        "<a class='category' href='/#{dir}/#{item.to_url}/'>#{item}</a>"
      end

      case categories.length
      when 0
        ""
      when 1
        categories[0].to_s
      else
        "#{categories[0...-1].join(', ')}, #{categories[-1]}"
      end
    end
    
    def date_to_html_string(date)
      result = '<span class="month">' + date.strftime('%b').upcase + '</span> '
      result += date.strftime('<span class="day">%d</span> ')
      result += date.strftime('<span class="year">%Y</span> ')
      result
    end
  end

end

