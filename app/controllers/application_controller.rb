class ApplicationController < ActionController::Base
  protect_from_forgery

  class Exposure
    attr_accessor :name
    attr_reader :model

    def self.configure(&block)
      new.tap do |exposure|
        exposure.instance_eval &block
      end
    end

    def call
      decorator
    end

    def decorate(name)
      self.name  = name
      self
    end

    def model(klass = Shapeshifter)
      @model ||= klass
    end

    private

    def decorator
      [name.to_s.classify, 'Decorator'].join.constantize.new(model.new)
    end

  end

  def self.expose(name, &block)
    define_method name do
      Exposure.configure(&block).call
    end
    helper_method name
    hide_action name
  end

end
