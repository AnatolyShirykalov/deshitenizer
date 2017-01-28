class FixedRegex < ApplicationRecord
  extend Enumerize
  enumerize :type, in: %w(input output)


end
