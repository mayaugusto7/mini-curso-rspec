class Weapon < ApplicationRecord

  def current_power
    (self.power_base + ((level - 1) * power_step))
  end

  def title
    "#{self.name} ##{self.level}"
  end
end
