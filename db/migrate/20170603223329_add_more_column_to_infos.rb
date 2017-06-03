class AddMoreColumnToInfos < ActiveRecord::Migration[5.0]
  def change
    add_column :infos, :first_name, :string
    add_column :infos, :project, :string
    add_column :infos, :entreprise, :string
    add_column :infos, :phone, :string
  end
end
