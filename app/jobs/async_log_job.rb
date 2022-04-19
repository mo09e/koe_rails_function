class AsyncLogJob < ApplicationJob
  queue_as :default

  def perform(user)
    UserMailer.with(to: user.email, name: user.name).welcome.deliver_later
  end
end
