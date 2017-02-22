class UserDecorator
  attr_reader :user, :view_context

  delegate :first_name, :last_name, :admin?, :moderator?, to: :user

  def initialize(user, view_context)
    @user, @view_context = user, view_context
  end

  def name
    "#{first_name} #{last_name.first}."
  end

  def staff_badge
    view_context.content_tag :span, "Staff", class: "badge badge-success" if admin?
  end

  def mod_badge
    view_context.content_tag :span, "Mod", class: "badge badge-primary" if user.moderator?
  end
end
