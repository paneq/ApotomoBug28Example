class TwitterWidget < BaseWidget

  def display
    render
  end

  self._helpers.module_eval do
    def self.inclued(cls)
      puts Rails.logger.warn( caller.join("\n") )
    end
    def self.extended(obj)
      puts Rails.logger.warn( caller.join("\n") )
    end
  end

end
