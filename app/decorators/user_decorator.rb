class UserDecorator < Draper::Decorator
  delegate_all

  def full_name
    "#{first_name} #{last_name}"
  end

  def staff_badge
    h.content_tag :span, "Staff", class: "badge badge-success" if admin?
  end

  def mod_badge
    h.content_tag :span, "Mod", class: "badge badge-primary" if moderator?
  end

  def self.collection_decorator_class
    PaginatingDecorator
  end
end
