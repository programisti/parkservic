ActiveAdmin.register About do

  permit_params :content, :image

  form do |f|
    f.inputs do
      f.input :content, as: :html_editor 
      f.input :image, :as => :file
    end
    f.actions
  end


  show do |ad|
    attributes_table do
      row :content
      row :image do
        image_tag(ad.image.url(:thumb))
      end
    end
  end

end
