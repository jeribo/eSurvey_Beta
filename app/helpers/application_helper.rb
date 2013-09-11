module ApplicationHelper
    def navigation_links
    links = []
    options = params[:controller] == "welcome" ? { class: "active" } : {}
    links << content_tag(:li, link_to(t("hello"), welcome_path), options).html_safe


    content_tag(:ul, links.join("\n").html_safe, class: "nav")
  end
  def language_links
    links = []
    I18n.available_locales.each do |locale|
      locale_key = "translation.#{locale}"
      if locale == I18n.locale
        links << link_to(I18n.t(locale_key), "#", class: "btn disabled")
      else
        links << link_to(I18n.t(locale_key), url_for(locale: locale.to_s), class: "btn")
      end
    end
    links.join("\n").html_safe
  end
end
