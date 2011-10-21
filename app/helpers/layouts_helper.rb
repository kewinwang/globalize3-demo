module LayoutsHelper

  def title(page_title)
    content_for(:title) { h(page_title.to_s) }
  end

  def metadesc(meta_desc)
    content_for(:meta_description) { h(meta_desc.to_s) }
  end

  def  keywords(meta_key)
    content_for(:meta_keywords) { h(meta_key.to_s) }
  end

end
