FactoryBot.define do
  factory :article do
    title { "aaaaa" }
    text { "a" }
    youtube_url { "https://www.youtube.com/watch?v=e79Ccevvxzk" }

    after(:build) do |article|
      article.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end