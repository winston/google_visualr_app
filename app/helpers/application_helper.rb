module ApplicationHelper

  def meta_title

    case
      when controller_name.casecmp("Docs")    == 0
        cname = "#{action_name.titleize} :: Documentation :: "
      when controller_name.casecmp("Example") == 0
        cname = "#{action_name.titleize} :: Examples :: "
      else
        cname = ""
    end

    return "#{cname}GoogleVisualr".gsub("Index ::", "")

  end

end