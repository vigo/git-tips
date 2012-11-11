# encoding: utf-8
module Jekyll
  class TagCloud < Liquid::Tag
    @@max_ranks = 15
    @@cloud_size = 30
    
    def render(context)
      s = StringIO.new
      begin
        tags = context['site']['tags']
        
        @@max_ranks = context['site']['tag_cloud_max_ranks']
        @@cloud_size = context['site']['tag_cloud_size']

        unless tags.none?
          sorted = tags.sort {|a, b| b[1].length <=> a[1].length}
          
          factor = 1
          max_count = sorted[0][1].length
          min_count = sorted[-1][1].length

          if max_count == min_count
            min_count -= @@max_ranks
          else
            factor = (@@max_ranks - 1) / Math.log(max_count - min_count + 1)
          end

          if sorted.length < @@max_ranks
            factor *= sorted.length / @@max_ranks.to_f
          end
          
          tag_dir = context['site']['tag_dir']
          
          for index in (0..@@cloud_size-1).to_a.shuffle do
            if sorted[index].nil?
              next
            end
            
            rank = @@max_ranks - (Math.log(sorted[index][1].length - min_count + 1) * factor).to_i
            s << "<span class='rank-#{rank}'>"
            s << "<a href='/#{tag_dir}/#{sorted[index][0].to_url}/'>#{sorted[index][0]}</a>"
            s << "</span> "
          end
        end
      rescue => boom
        p boom
      end
      s.string
    end
  end
end

Liquid::Template.register_tag('tag_cloud', Jekyll::TagCloud)
