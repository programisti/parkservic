ActiveAdmin.register Faq do
  permit_params :question, :answer

  form do |f|
    f.inputs do
      f.input :question, as: :html_editor 
      f.input :answer, as: :html_editor 
    end
    f.actions
  end
end
