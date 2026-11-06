# Fruit Slicer

A webcam hand-control game: slice flying fruit with your bare hand, tracked in
the browser by [MediaPipe](https://developers.google.com/mediapipe) — no mouse,
no controller, no pinch. Swipe fast through the fruit, dodge the barrels.

This is a standalone spin-out of the fruit game from the hand-control training
app. It keeps the shared engine the training app uses — hand/face tracking, the
cursor system, the adaptive renderer, the `Feel` juice layer, the optional
one-minute calibration ("Train") that teaches the game how your hand moves, and
the per-hand profile — but drops the bubble-pop and disc-carry games so the app
is just the slicer.

## Play

Open the GitHub Pages URL in a desktop browser, allow the camera, and slice.
Everything runs on your machine; see `PRIVACY.md`.

- **One hand or two** — turn on two-hand mode in the pre-game menu and your
  second hand gets its own blade.
- **Juice: Calm / Normal / Max** — how much motion and visual feedback the game
  gives. Calm strips the motion back (and follows your device's reduced-motion
  setting); Max turns it up.
- **Aim & cursor options**, sound, and cursor themes are in the menu.

## What's inside

A single `index.html` (HTML + CSS + inline JS, no build step, no framework).
The camera picture is processed on your computer by the hand-tracking library
and never leaves it; only a few numbers (your hand profile) are saved in your
browser. Not a medical or diagnostic device — see `DISCLAIMER.md`.

## Credits

Built by tbirdpower3000 and contributors. Hand and face tracking by Google
MediaPipe Tasks. See `LICENSE`.
