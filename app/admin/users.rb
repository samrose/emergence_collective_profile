ActiveAdmin.register User do
  index do
    column :email
    column :password
    column :password_confirmation

    default_actions
  end

 form do |f|
   f.inputs "User Details" do
     f.inputs :email
     f.inputs :password
     f.inputs :password_confirmation
   end
  f.buttons
 end  
  
end
