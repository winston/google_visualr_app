module ApplicationHelper

  def meta_title
    case
      when controller_name.casecmp("docs") == 0
        cname = "#{action_name.titleize} :: DataTable API Reference :: "
      when controller_name.casecmp("interactive") == 0 || controller_name.casecmp("image") == 0
        cname = "#{action_name.titleize} :: Chart Gallery :: "
      else
        cname = ""
    end
    "#{cname}GoogleVisualr".gsub("Index ::", "")
  end

  def codify_ruby(&block)
    CodeRay.scan(capture(&block), :ruby).div.html_safe
  end

  def codify_html(&block)
    CodeRay.scan(capture(&block), :erb).div.html_safe
  end

end
