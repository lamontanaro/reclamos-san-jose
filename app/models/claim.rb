class Claim < ApplicationRecord
  enum claim_type: [:Reciduos, :Alumbrado, :Cloacas, :Agua]
end
