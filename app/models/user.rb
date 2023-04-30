class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  bitmask_enum role: %i[standard admin super_admin], flag_prefix: 'role'

  def has_admin_perms?
    role_admin? || role_super_admin?
  end

  def super_admin?
    role_super_admin?
  end

  def admin?
    role_admin?
  end
end
