class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.map {|r| r.actor}
  end

  def locations
    self.auditions.map {|r| r.location}
  end

  def lead
    self.auditions.first.hired == true ? self.auditions.first : 'no actor has been hired for understudy for this role'
  end

  def understudy
    self.auditions.second.hired == true ? self.auditions.second : 'no actor has been hired for understudy for this role'
  end
end