# Image Annotation Platform Research for BJJ Match Analysis
**Date:** 2026-02-15
**Project:** BJJ athlete detection and pose estimation
**Budget:** $2,500-$3,000 total

## Requirements Summary
- **Stage 1:** Bounding boxes for ~5,000 images (budget: $1,000-$1,500)
- **Stage 2:** Pose keypoints for same 5,000 images (budget: $1,500)
- **Classes:** "athlete" vs "referee" (2-3 people per image typically)
- **Timeline:** Within 1 month
- **Quality:** Training data for computer vision models

## Platform Comparison

### 1. Scale AI
**Overview:** Enterprise-grade annotation platform, high quality
**Pricing:** Custom quotes only (no public pricing)
**Estimated costs based on industry reports:**
- Bounding boxes: $0.08-$0.25 per object
- Keypoint annotation: $0.30-$1.00 per object
- For 5,000 images × 2-3 objects = 10,000-15,000 annotations

**Stage 1 estimate:** 
- 10,000 bounding boxes @ $0.15/box = $1,500 ⚠️ (at budget limit)

**Stage 2 estimate:**
- 10,000 pose keypoints @ $0.50/object = $5,000 ❌ (exceeds budget)

**Pros:**
- Very high quality
- Fast turnaround
- Good for complex tasks
- Enterprise support

**Cons:**
- Most expensive option
- No transparent pricing
- Overkill for straightforward annotation
- Likely exceeds budget for keypoints

**Verdict:** Too expensive for this budget

---

### 2. Amazon SageMaker Ground Truth
**Overview:** AWS managed labeling service
**Pricing:** Public pricing available
- Object detection (bounding box): $0.036 per image + mechanical turk fees
- Keypoint: $0.036 per image + mechanical turk fees
- Mechanical Turk worker fees: ~$0.08 per annotation typically

**Estimated costs:**
- Bounding boxes: ~$0.12 per image (AWS fee + worker)
- Keypoints: ~$0.20 per image (AWS fee + worker)

**Stage 1 estimate:**
- 5,000 images @ $0.12 = $600 ✅

**Stage 2 estimate:**
- 5,000 images @ $0.20 = $1,000 ✅

**Total: ~$1,600** (well within budget!)

**Pros:**
- Transparent pricing
- Cost-effective
- Scalable
- Quality controls built-in
- Can use your own workforce or MTurk

**Cons:**
- Requires AWS account setup
- Learning curve for configuration
- Quality variable (MTurk workers)
- Need to review/QA results

**Verdict:** Best value for money

---

### 3. Labelbox
**Overview:** Popular annotation platform with free tier
**Pricing:** Has calculator but requires contact for services
**Platform:** Free for up to 5,000 images (self-labeling)
**Services:** Custom pricing

**Estimated costs (industry average):**
- Bounding boxes: $0.15-$0.30 per image
- Keypoints: $0.40-$0.80 per image

**Stage 1 estimate:**
- 5,000 images @ $0.20 = $1,000 ✅

**Stage 2 estimate:**
- 5,000 images @ $0.60 = $3,000 ❌ (exceeds budget)

**DIY Option:**
- Use free platform, hire your own annotators
- Platform cost: $0
- Worker cost: negotiable (MTurk, Upwork, etc.)

**Pros:**
- Free platform for self-service
- Good UI/UX
- Model-assisted labeling
- Can bring your own workers

**Cons:**
- Services pricing high
- Need to manage workers yourself for budget option
- QA responsibility on you

**Verdict:** Good if you manage workers yourself

---

### 4. Roboflow Annotate + Labeling Services
**Overview:** CV-focused platform with managed services
**Pricing:** Platform free, services custom quote
**Platform features:**
- Smart Polygon (SAM-based)
- Label Assist (custom models)
- Team collaboration

**Estimated costs:**
- Similar to Labelbox (~$0.15-$0.60 per image)
- May offer better rates for CV-specific tasks

**Pros:**
- Built for computer vision
- AI-assisted tools (SAM integration)
- Good for sports/action images
- Dataset management included

**Cons:**
- Custom pricing only
- Unknown if within budget

**Verdict:** Worth getting a quote

---

### 5. CVAT.ai (formerly OpenCV annotation tool)
**Overview:** Open-source annotation platform, self-hosted or cloud
**Pricing:**
- Self-hosted: FREE (just server costs)
- Cloud: Free tier, paid plans from $16/month
- Services: Can hire your own annotators

**DIY approach:**
- Platform: Free (self-hosted) or $16-50/month (cloud)
- Workers: Hire via Upwork/Fiverr
  - Philippines/India: $3-8/hour
  - 5,000 images @ 1 min/image = 83 hours @ $5/hr = $415
  - Keypoints @ 3 min/image = 250 hours @ $5/hr = $1,250

**Total estimate: ~$1,700** ✅ (within budget!)

**Pros:**
- Extremely cost-effective
- Full control over quality
- Open source
- Good for CV tasks

**Cons:**
- You manage everything
- Quality depends on your worker selection
- Time investment for setup/management
- Need to QA everything yourself

**Verdict:** Most budget-friendly, requires management

---

### 6. Hybrid: Label Studio + Upwork/Fiverr
**Overview:** Free open-source tool + freelance annotators
**Setup:**
- Label Studio: FREE (self-hosted)
- Hire annotators on Upwork/Fiverr
- Run your own QA/review process

**Cost breakdown:**
- Platform: $0
- Annotators: $3-10/hour (location-dependent)
- BJJ knowledge bonus: +$2-5/hour (sport-specific workers)

**Estimated timeline:**
- Bounding boxes: ~30-60 sec per image
- Keypoints: ~2-4 min per image
- 5,000 images total: ~300-400 hours work

**Budget scenarios:**
- At $5/hour: $1,500-2,000 total ✅
- At $8/hour: $2,400-3,200 total ✅

**Pros:**
- Maximum cost control
- Can hire BJJ-knowledgeable annotators
- Flexible workflow
- Keep all data private

**Cons:**
- Most manual management
- Your time investment high
- Quality varies by worker
- No SLA or guarantees

**Verdict:** Best control, most work

---

## Recommendations

### Option A: Best Value (Recommended)
**Amazon SageMaker Ground Truth**
- Stage 1 (bounding): $600
- Stage 2 (keypoints): $1,000
- **Total: ~$1,600**
- Leaves $900-1,400 for extra images or QA passes
- Fast setup, managed QA, scalable

### Option B: Maximum Budget Efficiency
**CVAT.ai + Upwork annotators**
- Platform: Free-$50/month
- Workers: $1,200-1,700 for all work
- **Total: ~$1,250-1,750**
- Most cost-effective
- Requires your management time
- Can hire BJJ-knowledgeable workers

### Option C: Best Quality/Speed Balance
**Roboflow + Managed Services**
- Get custom quote
- Likely $2,000-2,500 range
- CV-optimized tools
- SAM integration for smart annotation
- Worth checking if quote fits budget

### Option D: Maximum Control
**Label Studio + vetted freelancers**
- Platform: Free
- Hire 2-3 reliable annotators
- Budget: $1,500-2,000 all-in
- Best for maintaining quality
- Can build long-term team

---

## Next Steps

1. **Quick start (this week):**
   - Get Roboflow quote (might have competitive pricing)
   - Set up AWS SageMaker Ground Truth trial
   - Test with 100 sample images

2. **If budget allows:**
   - Use SageMaker for bulk work ($1,600)
   - Use remaining $900-1,400 for:
     - QA/review pass
     - Additional images beyond 5,000
     - Edge case manual annotation

3. **If ultra-budget conscious:**
   - Set up CVAT.ai cloud ($16/month)
   - Post job on Upwork for BJJ-familiar annotators
   - Start with paid trial (100 images) to vet workers
   - Scale to full 5,000 after quality check

---

## Questions to Ask Sales Teams

When contacting Roboflow, Scale AI, or other platforms:

1. What's your per-image cost for:
   - Bounding box annotation (2-3 boxes/image)
   - Pose keypoint annotation (17 keypoints × 2-3 people)

2. What's your turnaround time for 5,000 images?

3. Do you offer:
   - Discount for bulk orders?
   - Two-stage workflow (boxes first, keypoints second)?
   - Quality guarantees or SLA?

4. Can we start with 500 image trial?

5. What format do you deliver annotations in? (COCO, YOLO, Pascal VOC?)

