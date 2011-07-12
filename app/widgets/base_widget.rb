class BaseWidget < Apotomo::Widget

  helper do
    def widget_div(options={}, &block)
      debugger
      options[:class] = Array.wrap( options[:class] )
      options[:class] << Range.new(:a, :a).to_a.sample
      options[:'self-class-inspect'] = self.class.inspect
      options[:'object_id'] = object_id
      super 
    end
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
