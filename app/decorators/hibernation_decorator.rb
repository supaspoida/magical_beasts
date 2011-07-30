class HibernationDecorator < Draper::Base
  decorates :shapeshifter

  def say
    "I'm a #{model.class}! Am sleepy..."
  end

end
