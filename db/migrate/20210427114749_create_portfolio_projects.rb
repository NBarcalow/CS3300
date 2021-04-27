class CreatePortfolioProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolio_projects do |t|
      t.string :title
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :portfolio_projects, :slug, unique: true
  end
end
