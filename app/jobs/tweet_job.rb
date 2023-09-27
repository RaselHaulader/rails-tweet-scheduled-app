class TweetJob < ApplicationJob
  queue_as :default

  def perform(tweet)
    # Do something later
    return if tweet.published?
    return if tweet.publish_at > Time.current
    tweet.published_to_twitter!
  end
end
