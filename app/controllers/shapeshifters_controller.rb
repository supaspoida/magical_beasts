class ShapeshiftersController < ApplicationController

  expose(:shapeshifter) do
    model Falcon
    decorate :attack
  end if true

  expose(:shapeshifter) do
    model Falcon
    decorate :hibernation
  end if false

  expose(:shapeshifter) do
    model Bear
    decorate :attack
  end if false

  expose(:shapeshifter) do
    model Bear
    decorate :hibernation
  end if false

end
