class AddStageToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :stage, :string
  end
end
