class Review < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :easypoint, presence: true
  validates :hardpoint, presence: true

  extend FriendlyId
  friendly_id :generate_random_number, use: :slugged

  scope :paginate, ->(page:, per_page: 5) {
          page = (page || 1).to_i

          current_scope = limit(per_page).offset((page - 1) * per_page)

          PaginationResult.new(current_scope).tap do |result|
            result.current_page = page
            result.total_pages = (count / per_page.to_f).ceil
          end
        }

  class PaginationResult < SimpleDelegator
    attr_accessor :current_page, :total_pages
  end

  private

  def generate_random_number
    rand(10 ** 9..10 ** 10 - 1).to_s
  end
end
