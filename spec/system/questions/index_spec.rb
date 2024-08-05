require "rails_helper"

RSpec.describe "Questions Index Page", type: :system do
  it "displays all questions" do
    create_list(:question, 3)

    visit questions_path

    expect(page).to have_css(".question", count: 3)
    expect(page).to have_text("1. List all breeds", count: 3)
  end

  it "links to questions' show page" do
    question = create(:question)

    visit questions_path

    expect(page).to have_link(question.prompt)
    click_on question.prompt

    expect(current_path).to eq(question_path(question.id))
  end
end
