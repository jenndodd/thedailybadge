module FormHelper
  def setup_badge(badge)
    5.times { badge.checkpoints.build }
    badge
  end
end