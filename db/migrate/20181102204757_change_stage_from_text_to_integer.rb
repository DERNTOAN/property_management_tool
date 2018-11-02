class ChangeStageFromTextToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :properties, :stage, :integer, default: 0
  end
end
