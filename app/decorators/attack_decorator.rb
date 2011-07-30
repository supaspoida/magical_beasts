class AttackDecorator < Draper::Base
  decorates :shapeshifter

  def say
    "I'm a #{model.class}! I claw your face!"
  end

end
