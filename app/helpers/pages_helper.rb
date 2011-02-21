
module PagesHelper
  
  def link_to_wiki articel, name = articel
    wiki_link = "http://en.wikipedia.org/wiki/"
    "<a href= \"" + wiki_link + articel + "\" title=\"Go to the wikipedia articel" + articel + "\">" + name + "</a>"
  end
  
  def link_to_extern link, name
    "<a href= \"" + link + "\" title=\"Folllow the link" + link + "\">" + name + "</a>"
  end
  
  def show_shell p
    wrap_shower(div "shell round", "$ #{p}")
  end
  
  def show_file file, content
    (div "fileHeader", file) + 
    wrap_shower(div "addToFile", "<pre class=\"preFile\">" + content + "</pre>")
  end
  
  private
  
    def div p1, p2
      "<div class=\"#{p1}\">
         #{p2}
       </div>"
    end
  
    def wrap_shower p
      div "entity", p
    end
  
end
