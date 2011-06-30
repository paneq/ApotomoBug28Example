class BaseWidget < Apotomo::Widget

  helper do
    def widget_div(options={}, &block)
      options[:class] = Array.wrap( options[:class] )
      options[:class] << Range.new(:m, :z).to_a.sample
      super 
    end
  end

end
