class Cgroup < ApplicationRecord
  has_many :cregexes, dependent: :destroy
  def as_json(options={})
    {
      id: id,
      name: name,
      cregexes: cregexes.as_json
    }
  end
end
