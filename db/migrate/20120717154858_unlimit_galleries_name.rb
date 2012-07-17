class UnlimitGalleriesName < ActiveRecord::Migration
  def up
    change_column :galleries, :name, :string, :limit => nil
  end

  def down
    change_column :galleries, :name, :string, :limit => 20
  end
end
