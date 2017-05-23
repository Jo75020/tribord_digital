ActiveAdmin.register Article do
index do
    selectable_column
    column :title
    column :content
    column :user_id
    column :created_at
    actions
  end
permit_params :title, :content, :user_id
end
