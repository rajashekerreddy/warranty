class Photo < ActiveRecord::Base
  attr_accessible :content, :photable_id, :photable_type
  belongs_to :photable, :polymorphic => true
end
