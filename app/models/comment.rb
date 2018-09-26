class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true

  validates_presence_of :body
  validates :name, :email, presence: true, if: -> { user_id.blank? }
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, allow_blank: true

  HUMANIZED_ATTRIBUTES = {
    body: "Comment"
  }
  
  def self.human_attribute_name(attr, options = {})
    HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end

  def title(current_user)
    if current_user && !user
      name_ = "#{name} (#{email})"
    else
      name_ = "#{user.try(:name) || name }"
    end

    "#{name_} posted on #{created_at.strftime("%d %B %Y")}"
  end

end
