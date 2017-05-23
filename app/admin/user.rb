ActiveAdmin.register User do
  form do |f|
    f.inputs "Identity" do
      f.input :first_name
      f.input :email
      f.input :password
    end
    f.inputs "Admin" do
      f.input :admin
    end
    f.actions
  end

  permit_params :first_name, :email, :admin, :password
end
