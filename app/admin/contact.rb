ActiveAdmin.register Contact do

  permit_params :content

  form do |f|
    f.inputs do
      f.input :content, as: :html_editor 
    end
    f.actions
  end

end
