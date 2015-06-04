ActiveAdmin.register How do
  permit_params :title, :content, :image

  form do |f|
    f.inputs do
      f.input :title
      f.input :content, as: :html_editor 
    end
    f.actions
  end
end
