class Article < ApplicationRecord
  VALID_URL_REGEX = /(?:http(?:s)?:\/\/)?(?:www\.)?(?:youtu\.be\/|youtube\.com\/(?:(?:watch)?\?(?:.*&)?v(?:i)?=|(?:embed|v|vi|user)\/))([^\?&\"'<> #]+)|\A\z/
  validates :title, presence: true, length: { minimum: 5 }
  validates :youtube_url,
  format: { with: VALID_URL_REGEX ,
  message: 'URLが正しくありません'}
  has_one_attached :image
end
