require 'redmine'

Redmine::Plugin.register :custom_stylesheet do
  name 'Custom stylesheet Plugin'
  author 'Margasov Alexei'
  description 'Add Custom Stylesheet'
  version '0.0.1'
end

class CustomStylesheetHookListener < Redmine::Hook::ViewListener
   def view_layouts_base_html_head(context)
     stylesheet_link_tag('custom_style.css', :plugin => :custom_stylesheet)
  end
end
