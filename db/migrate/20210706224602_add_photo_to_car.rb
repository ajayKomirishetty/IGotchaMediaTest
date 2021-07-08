class AddPhotoToCar < ActiveRecord::Migration[6.1]
  def change
    # add_column :cars, :photo, :attachment
    add_column :cars, :photo_file_name, :string
    add_column :cars, :photo_content_type, :string
    add_column :cars, :photo_file_size, :integer
    add_column :cars, :photo_updated_at, :datetime
  end
end
