class Article < ApplicationRecord
  VALID_URL_REGEX = %r{(?:http(?:s)?://)?(?:www\.)?(?:youtu\.be/|youtube\.com/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)/))([^?&"'<> #]+)|\A\z}.freeze
  validates :title, presence: true, length: { minimum: 5 }
  validates :text, presence: true
  validates :youtube_url,
            format: { with: VALID_URL_REGEX,
                      message: 'URLが正しくありません' }
  has_one_attached :image
end
