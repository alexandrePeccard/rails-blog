class CreateDatabaseTables < ActiveRecord::Migration[5.2]
  def change
  	create_table "users", force: :cascade do |t|
	    t.string "first_name", null: false
	    t.string "last_name", null: false
	    t.string "email", null: false

	    t.timestamps
  	end

	  create_table "articles", force: :cascade do |t|
	    t.string "title", null: false
	    t.text "content", null: false

	    t.references :user, index: true
	    t.references :category, index: true

	    t.timestamps
	  end

	  create_table "categories", force: :cascade do |t|
	    t.string "title", null: false

	    t.timestamps
	  end

	  create_table "comments", force: :cascade do |t|
	    t.text "content", null: false

	    t.references :user, index: true
	    t.references :article, index: true
	    t.references :comment, index: true

	    t.timestamps
	  end

	  create_table "likes", force: :cascade do |t|
	  	t.references :user, index: true
	  	t.references :article, index: true
	  	t.references :comment, index: true

	    t.timestamps
	  end
	end
end