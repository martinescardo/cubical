{-

This file contains:

- Definition of groupoid truncations

-}
{-# OPTIONS --cubical --safe #-}
module Cubical.HITs.GroupoidTruncation.Base where

open import Cubical.Core.Prelude

-- groupoid truncation as a higher inductive type:

data ∥_∥₁ {ℓ} (A : Set ℓ) : Set ℓ where
  ∣_∣₁ : A → ∥ A ∥₁
  squash₁ : ∀ (x y : ∥ A ∥₁) (p q : x ≡ y) (r s : p ≡ q) → r ≡ s
