class Podcast < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_one_attached :audio
  has_many :subscriptions, dependent: :destroy
  has_many :subscribers, through: :subscriptions, source: :user

  validates :title, presence: true
  validates :title, length: { minimum: 2 }

  def self.random_by_day
    return unless exists?

    cached_random_podcast_id = Rails.cache.fetch("random_podcast_id", expires_in: 1.days) do
      offset(rand(Podcast.count)).first.id
    end
    find_by(id: cached_random_podcast_id)
  end

  def authored_by?(user)
    self.user == user
  end
end
