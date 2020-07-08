module FormHelper
  def field_error(errors, field)
    msgs = errors && errors.select { |k, _| k == field.to_sym }[field.to_sym]
    content_tag(:p, msgs && msgs.join(", "), class: "help is-danger").html_safe
  end
end