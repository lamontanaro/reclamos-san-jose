module ClaimTypeHelper
  def claim_types_for_select
    Claim.claim_types.keys
  end
end
