ActiveAdmin.register Slider do


  permit_params :title, :image


  show do |ad|
    attributes_table do
      row :title
      row :image do
        image_tag(ad.image.url(:thumb))
      end
    end
  end

  form do |f|
    f.inputs "Slider Details" do
      f.input :title
      f.input :image, :as => :file
    end
    
    f.actions
  end


end
