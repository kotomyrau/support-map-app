class Store < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  

  CATEGORY = ["Retail", "Activity", "Restaurant"]
end
