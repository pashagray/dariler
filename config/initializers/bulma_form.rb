class BulmaForm < ActionView::Helpers::FormBuilder
  def text_field(method, options = {})
    @template.content_tag(:div, class: "field") do
      [
        @template.label(@object_name, method, class: "label"),
        @template.content_tag(:div, class: "control") do
          [
            super(method, { class: "input", autocomplete: "off" }.merge(options)),
            @template.field_error(@object.errors.messages, method.to_sym)
          ].join("").html_safe
        end
      ].join("").html_safe
    end
  end

  def text_area(method, options = {})
    @template.content_tag(:div, class: "field") do
      [
        @template.label(@object_name, method, class: "label"),
        @template.content_tag(:div, class: "control") do
          [
            super(method, { class: "input", autocomplete: "off" }.merge(options)),
            @template.field_error(@options[:errors], method.to_sym)
          ].join("").html_safe
        end
      ].join("").html_safe
    end
  end

  def email_field(method, options = {})
    @template.content_tag(:div, class: "field") do
      [
        @template.label(@object_name, method, class: "label"),
        @template.content_tag(:div, class: "control") do
          [
            super(method, { class: "input", autocomplete: "off" }.merge(options)),
            @template.field_error(@options[:errors], method.to_sym)
          ].join("").html_safe
        end
      ].join("").html_safe
    end
  end

  def select(method, choices = nil, options = {}, html_options = {}, &block)
    @template.content_tag(:div, class: "field") do
      [
        @template.label(@object_name, method, class: "label"),
        @template.content_tag(:div, class: "control") do
          [
            @template.content_tag(:div, class: "select is-fullwidth") do
              super(method, choices, options, html_options, &block)
            end,
            @template.field_error(@options[:errors], method.to_sym)
          ].join("").html_safe
        end
      ].join("").html_safe
    end
  end

  def number_field(method, options = {})
    @template.content_tag(:div, class: "field") do
      [
        @template.label(@object_name, method, class: "label"),
        @template.content_tag(:div, class: "control") do
          [
            super(method, { class: "input" }.merge(options)),
            @template.field_error(@options[:errors], method.to_sym)
          ].join("").html_safe
        end
      ].join("").html_safe
    end
  end

  def date_field(method, options = {})
    @template.content_tag(:div, class: "field") do
      [
        @template.label(@object_name, method, class: "label"),
        @template.content_tag(:div, class: "control") do
          [
            super(method, { class: "input", autocomplete: "off" }.merge(options)),
            @template.field_error(@options[:errors], method.to_sym)
          ].join("").html_safe
        end
      ].join("").html_safe
    end
  end
end
