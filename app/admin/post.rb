ActiveAdmin.register Post do
  permit_params :title, :body, :slug

  filter :title

  config.sort_order = 'updated_at_desc'

  controller do
    def find_resource
      scoped_collection.friendly.find(params[:id])
    end
  end

  index do
    column :title
    column :slug
    column :updated_at
    actions
  end

  show do |t|
    attributes_table do
      row :title
      row :slug
      row :body
      # row :image do
      #   post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "No image yet")
      # end
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :slug
      f.input :body
      # f.input :image, hint: f.post.image? ? image_tag(post.image.url, height: '100') : content_tag(:span, "Upload JPG/PNG/GIF image")
    end
    f.actions
  end
end
