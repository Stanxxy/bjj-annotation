# BJJ Match Image Annotation Instructions

## Project Overview
You will be annotating images from Brazilian Jiu-Jitsu (BJJ) matches to help train computer vision models for athlete detection and match analysis.

## What You'll Annotate
Each image contains 2-3 people:
- **2 athletes** (competitors in BJJ match)
- **1 referee** (person in different uniform, usually standing)

## Annotation Tasks

### Stage 1: Bounding Boxes
Draw rectangular boxes around each person in the image.

**Steps:**
1. Identify all people in the image (typically 2 athletes + 1 referee)
2. For each person, draw a tight bounding box that:
   - Includes their entire body (head to feet)
   - Includes any limbs that are visible
   - Has minimal empty space around the person
3. Label each box as either:
   - **`athlete`** - competitors wearing gi (traditional uniform) or no-gi attire
   - **`referee`** - official wearing different uniform (usually black/white striped or solid colored shirt)

**Quality Guidelines:**
- ✅ **DO:** Make boxes as tight as possible around the person
- ✅ **DO:** Include all visible body parts
- ✅ **DO:** Include the person even if partially occluded (blocked by another person)
- ❌ **DON'T:** Leave large gaps between the box edge and the person
- ❌ **DON'T:** Cut off any visible body parts
- ❌ **DON'T:** Skip people who are partially out of frame (annotate visible portion)

**Examples:**
```
Good box:
┌──────────┐
│ Athlete  │  ← Tight fit
│  Person  │  ← All limbs included
│    🧍    │  
└──────────┘

Bad box:
┌────────────────┐
│                │  ← Too much empty space
│      🧍        │
│                │
└────────────────┘
```

---

### Stage 2: Pose Keypoints
Mark 17 body keypoints for each person (after bounding boxes are complete).

**Keypoint List:**
Standard COCO pose format - 17 points per person:

1. **Nose**
2. **Left Eye**
3. **Right Eye**
4. **Left Ear**
5. **Right Ear**
6. **Left Shoulder**
7. **Right Shoulder**
8. **Left Elbow**
9. **Right Elbow**
10. **Left Wrist**
11. **Right Wrist**
12. **Left Hip**
13. **Right Hip**
14. **Left Knee**
15. **Right Knee**
16. **Left Ankle**
17. **Right Ankle**

**How to Mark Keypoints:**
1. Click on the exact location of each body joint/landmark
2. If a keypoint is **not visible** (occluded, out of frame, or obscured):
   - Mark it as "not visible" or skip it (depending on your annotation tool)
   - Do NOT guess where it might be
3. "Left" and "Right" refer to the person's left/right (not your perspective)

**Quality Guidelines:**
- ✅ **DO:** Place points precisely on the center of each joint
- ✅ **DO:** Mark all visible keypoints
- ✅ **DO:** Mark keypoints as "occluded" if blocked by another person/object
- ❌ **DON'T:** Guess positions for invisible keypoints
- ❌ **DON'T:** Mix up left/right (always use the person's perspective)
- ❌ **DON'T:** Skip keypoints that are visible

**Special Cases:**

**Grappling (people tangled):**
- Athletes in BJJ are often entangled
- Mark what you can see clearly
- Mark occluded keypoints as "not visible"
- Take your time to trace each person's body

**Ground positions:**
- Athletes may be lying down, sideways, or upside-down
- Keypoints still follow the same body landmarks
- Use the person's anatomical orientation (their left is their left, regardless of how they're rotated)

**Referee:**
- Referees are usually standing upright
- Annotate them the same way as athletes
- All 17 keypoints apply

---

## Class Definitions

### `athlete`
**Who:** Competitors in the match
**Appearance:**
- Wearing **gi** (traditional white, blue, or black kimono-style uniform)
- OR wearing **no-gi** attire (rash guard, shorts, spats)
- Usually on the ground or engaged with another athlete
- May have colored belts visible

**Examples:**
- Person in white gi rolling on the mat
- Person in blue gi standing/fighting
- Person in rash guard and shorts grappling

### `referee`
**Who:** Official overseeing the match
**Appearance:**
- Usually wearing **different uniform** than athletes:
  - Black and white striped shirt (like soccer referee)
  - Solid black or blue shirt
  - Sometimes formal attire (button-up shirt)
- Usually **standing** or **kneeling** next to athletes
- Not actively grappling
- May be gesturing or observing closely

**Examples:**
- Person in striped shirt standing over match
- Person in black shirt kneeling beside athletes
- Person in formal attire watching the match

---

## Common Mistakes to Avoid

### Mistake 1: Wrong Class Label
❌ **Wrong:** Labeling a referee as `athlete` because they're on the mat
✅ **Correct:** Check the uniform - referees wear different clothing

### Mistake 2: Loose Bounding Boxes
❌ **Wrong:** Box with 20-30% empty space around person
✅ **Correct:** Tight box with 5-10% padding max

### Mistake 3: Missing Partial People
❌ **Wrong:** Skipping a person whose arm is out of frame
✅ **Correct:** Annotate the visible portion

### Mistake 4: Guessing Occluded Keypoints
❌ **Wrong:** Placing a wrist keypoint where you think it "should be" but can't see
✅ **Correct:** Mark as "not visible" or "occluded"

### Mistake 5: Left/Right Confusion
❌ **Wrong:** Using your left/right perspective
✅ **Correct:** Using the person's anatomical left/right (imagine you are them)

---

## Quality Checklist

Before submitting each image, verify:

**Bounding Boxes:**
- [ ] Every person in the image has a box
- [ ] Boxes are tight (minimal empty space)
- [ ] All visible body parts are included
- [ ] Each box has correct label (`athlete` or `referee`)

**Keypoints:**
- [ ] All visible keypoints are marked for each person
- [ ] Occluded keypoints are marked as "not visible"
- [ ] Left/right keypoints match the person's anatomical orientation
- [ ] Keypoints are placed precisely on joints (not approximate)

---

## Examples

### Example 1: Two Athletes Ground Fighting
```
Image: Two athletes in white gi grappling on the mat

Bounding boxes:
- Box 1: athlete (person on top)
- Box 2: athlete (person on bottom)

Keypoints:
- Athlete 1: All keypoints visible except left ankle (behind other person)
- Athlete 2: Only head, right shoulder, right elbow visible (rest occluded)
```

### Example 2: Standing Match with Referee
```
Image: Two athletes standing, referee watching from side

Bounding boxes:
- Box 1: athlete (blue gi)
- Box 2: athlete (white gi)
- Box 3: referee (striped shirt)

Keypoints:
- Athlete 1: All 17 keypoints visible
- Athlete 2: All 17 keypoints visible
- Referee: All 17 keypoints visible
```

### Example 3: Complex Ground Position
```
Image: Athlete applying submission, both bodies twisted

Bounding boxes:
- Box 1: athlete (top position, blue gi)
- Box 2: athlete (bottom position, white gi)

Keypoints:
- Athlete 1: 12 keypoints visible (legs behind opponent)
- Athlete 2: 9 keypoints visible (arms trapped under opponent)
```

---

## Getting Help

**If you're unsure about:**
- **Class label:** Look at the uniform - different from athletes = referee
- **Occluded keypoint:** When in doubt, mark as "not visible"
- **Anatomical left/right:** Imagine you are that person, which is YOUR left arm?
- **Bounding box size:** Err on the side of slightly larger rather than cutting off body parts

**Contact:** [Your email/support channel here]

---

## Time Estimates

Based on typical annotation speed:

**Bounding boxes only:**
- Simple image (2-3 people, clear view): 30-60 seconds
- Complex image (tangled, partially occluded): 60-90 seconds

**Keypoints only (after boxes done):**
- Simple image (all keypoints visible): 2-3 minutes per person
- Complex image (many occlusions): 3-5 minutes per person

**Total per image (boxes + keypoints):**
- Simple: ~5-7 minutes
- Complex: ~8-12 minutes

---

## Payment & Progress

**Batch size:** You will receive images in batches of 100-500
**QA process:** Random sample (10-20%) will be reviewed for quality
**Rejection criteria:** 
- Missing people in the image
- Wrong class labels (athlete/referee)
- Sloppy bounding boxes (too loose or cutting off body parts)
- Incorrect or guessed keypoints

**Tip for success:** Take your time on the first 10-20 images to build accuracy, then speed will come naturally!

---

**Thank you for your careful work! Your annotations will help create AI that can automatically analyze BJJ matches and help athletes improve their technique.**
