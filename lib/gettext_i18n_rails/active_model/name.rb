module ActiveModel
  Name.class_eval do
    def human(options={})
      human_name = @klass.class.name.delete(":")

      if count = options[:count]
        n_(human_name, human_name.pluralize, count)
      else
        _(human_name)
      end
    end
  end
end
