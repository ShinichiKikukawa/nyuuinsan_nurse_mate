module ApplicationHelper

  def full_title(page_name = "")
    base_title = "入院さんナースメイト"
    if page_name.empty?
      base_title
    else
      page_name + " | " + base_title
    end
  end

  def heic_image?(image)
    return false unless image.attached?

    content_type = image.blob.content_type
    content_type == 'image/heic' || content_type == 'image/heif'
  end
end