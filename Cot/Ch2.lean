/- # 2 Convex Sets -/
import Mathlib.Analysis.Convex.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Algebra.BigOperators.Finprod
import Mathlib.Tactic

/-! ## Definition of convexity -/

/-!
### 2.1
> Let C ⊆ Rⁿ be a convex set, with x1, ... , xk ∈ C, and let θ1, ... , θk ∈ R satisfy θi ≥ 0, θ1 + ... + θk = 1. Show that θ1 x1 + ... + θk xk ∈ C. (The definition of convexity is that this holds for k = 2; you must show it for arbitrary k.) Hint. Use induction on k.
-/
section

-- Instead of `Rⁿ`, we will show the proposition for a more general set `E`.
variable {𝕜 E F : Type*}
variable (𝕜) [SMul 𝕜 E] [SMul 𝕜 F] [OrderedSemiring 𝕜] [AddCommMonoid E] {x : E}

-- given a set `C ⊆ E`
variable {C : Set E}

variable {k : ℕ} (hk : k ≥ 1) (x : Fin k → C) (θ : Fin k → 𝕜)

open scoped BigOperators

example (cov : Convex 𝕜 C) (hnn : ∀i, 0 ≤ θ i) (hsum : ∑ i, θ i = 1) : ∑ i, θ i • (x i : E) ∈ C := by
  -- show by induction on k.
  induction' k with k ih

  -- `k = 0` is impossible
  case zero => contradiction

  -- we have a lot to do...
  sorry

end
