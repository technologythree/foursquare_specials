module SpecialHelper
  def full_address(location)
      [location.address, location.city, location.state].reject{|n| n.blank? }.join(', ')
  end
end
