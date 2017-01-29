class FixedRegex < ApplicationRecord
  extend Enumerize
  enumerize :direction, in: %w(tokasha fromkasha)


end
