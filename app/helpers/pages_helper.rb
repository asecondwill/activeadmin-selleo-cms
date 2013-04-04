module PagesHelper
  def link_to_locale(link_name, locale, page=nil)
    if page
      link_to link_name, with_host(url_to_page(page, locale.to_s))
    elsif request.fullpath.match(/^\/\w{2}\/.*/)
      link_to link_name, with_host(request.fullpath.gsub(/^\/(\w{2})\//, "/#{locale.code}/"))
    else
      link_to link_name, with_host("/#{locale.code}")
    end
  end

  def with_host(relative_path)
    relative_path.match(/http/) ? relative_path : "#{request.protocol}#{request.host_with_port}#{relative_path}"
  end

  def link_to_search_result(result)
    if result.is_a? ActiveadminSelleoCms::Page
      "#{link_to result.breadcrumb, with_host(result.url)} #{link_to "(e)", edit_admin_page_path(result.id), target: '_blank' if current_user}".html_safe
    end
  end

  def url_to_page(page, locale=I18n.locale)
    return "#" unless page
    _locale = I18n.locale
    I18n.locale = locale
    _url = with_host(page.url)
    I18n.locale = _locale
    return _url
  end

  def link_to_page(page, link_name=nil, options={})
    link_to (link_name || page.title), with_host(page.url), options
  end

  def s(name)
    section = ActiveadminSelleoCms::Section.where(name: name).first_or_create
    body = section.body.to_s
    body = "" if body.match /<p>\s*<\/p>/
    body += link_to(t("active_admin.cms.edit"), edit_admin_section_path(section)) if current_user and current_user.respond_to? :admin? and current_user.admin?
    body.html_safe
  end
end
