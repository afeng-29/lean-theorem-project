import Mathlib

-- Verification proofs: if these compile, the Lean + mathlib setup is working.

-- trivial: n + 0 = n
example (n : ℕ) : n + 0 = n := by simp

-- trivial: 0 + n = n
example (n : ℕ) : 0 + n = n := by simp

-- commutativity of addition
example (n m : ℕ) : n + m = m + n := by ring

-- associativity of addition
example (n m k : ℕ) : (n + m) + k = n + (m + k) := by ring

-- simple logic
example (P Q : Prop) (h : P ∧ Q) : Q ∧ P := by
  exact ⟨h.2, h.1⟩

example (P : Prop) (h : P) : P := h
