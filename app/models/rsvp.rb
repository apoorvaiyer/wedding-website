class Rsvp
  include Dynamoid::Document

  validates :name, presence: true
  validates :email, presence: true, format: /@/
  validates :guest_count, presence: true, numericality: { only_integer: true }
  validates :attending, inclusion: { in: [true, false] }

  field :name
  field :email
  field :guest_count, :integer
  field :attending, :boolean
end
