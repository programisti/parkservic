ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ "მთავარი გვერდი"  }

  content title: proc{ "მართვის პანელი"  } do

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       column do
         panel "ხშირად დასმული კითხვები" do
           ul do
             Faq.last(5).map do |i|
               li link_to(i.question, admin_faq_path(i))
             end
           end
         end
       end

       column do
         panel "როგორ მუშაობს?" do
           ul do
             How.last(3).map do |i|
               li link_to(i.title, admin_how_path(i))
             end
           end
         end
       end

       column do
         panel "რა არის პარკსერვისი" do
           ul do
             About.last(3).map do |i|
               li link_to(i.content.truncate(30), admin_about_path(i))
             end
           end
         end
       end
     end #columns
  end # content
end
