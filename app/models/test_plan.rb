class TestPlan < ApplicationRecord
  store :plan_pieces, coder: JSON
end
