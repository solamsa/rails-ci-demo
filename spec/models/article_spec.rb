require 'rails_helper'

RSpec.describe Article, type: :model do
  it 'successfully connects to the database and saves a record' do
    article = Article.new(title: "CI Demo", content: "Testing Postgres connectivity")
    
    expect(article.save).to be true
    expect(Article.count).to eq(1)
  end
end
