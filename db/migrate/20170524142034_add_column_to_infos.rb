class AddColumnToInfos < ActiveRecord::Migration[5.0]
  def change
    add_column :infos, :email, :string
  end
end
