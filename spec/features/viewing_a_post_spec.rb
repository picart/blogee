require 'spec_helper'

feature 'Viewing a post spec' do
<<<<<<< HEAD
  # uncomment the following line when running this feature
  let!(:post) { create(:post) }

  scenario do
    "Please complete creating_posts_spec.rb"
=======
  let!(:post) { create(:post) }

  scenario do
>>>>>>> 3678cff38b5360a97298b0b0eadceeefcc7b9dce
    visit posts_path
    click_link post.title

    expect(current_path).to eq post_path(post)

    within('#title') do
      expect(page).to have_content post.title
    end
    within('#content') do
      expect(page).to have_content post.content
    end
    within('#author') do
      expect(page).to have_content post.author
    end
  end
end
