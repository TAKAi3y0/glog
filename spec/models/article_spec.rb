require 'rails_helper'

RSpec.describe Article, type: :model do
  before do
    @article = FactoryBot.build(:article)
  end

  describe '記事の保存' do
    context '記事が保存できる場合' do
      it '全て存在すれば保存される' do
        expect(@article).to be_valid
      end
      it '画像がなくても保存される' do
        @article.image = nil
        expect(@article).to be_valid
      end
      it 'URLがなくても保存される' do
        @article.youtube_url = nil
        expect(@article).to be_valid
      end
    end
    context '記事が保存できない場合' do
      it 'タイトルがないと記事は保存できない' do
        @article.title = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Title can't be blank")
      end

      it 'タイトルが4文字以下だと記事は保存できない' do
        @article.title = 'aaaa'
        @article.valid?
        expect(@article.errors.full_messages).to include('Title is too short (minimum is 5 characters)')
      end

      it 'テキストがないと記事は保存できない' do
        @article.text = nil
        @article.valid?
        expect(@article.errors.full_messages).to include("Text can't be blank")
      end

      it 'urlがyoutubeの動画urlでないと記事は保存できない' do
        @article.youtube_url = 'a'
        @article.valid?
        expect(@article.errors.full_messages).to include('Youtube url URLが正しくありません')
      end
    end
  end
end
