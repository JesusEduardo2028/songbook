FactoryGirl.define do
  factory :song do
    name {"Test Song #{Song.count + 1}"}
    duration {300000}
    url {"http://test_url_#{Song.count + 1}"}
  end
end
