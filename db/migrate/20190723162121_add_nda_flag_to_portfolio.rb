class AddNdaFlagToPortfolio < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :nda_status, :integer, default: 0
  end
end
