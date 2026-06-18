import Lake
open Lake DSL

package «theorem-prover» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

@[default_target]
lean_lib «TheoremProver» where
  roots := #[`TestProofs, `ProofGoals]
