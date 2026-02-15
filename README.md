# BJJ Match Annotation Project

Image annotation project for Brazilian Jiu-Jitsu match analysis using computer vision.

## Goal

Train computer vision models to:
- Detect athletes and referees in BJJ match footage
- Estimate pose keypoints for match analysis
- Enable automated match analysis and technique recognition

## Project Details

- **Dataset size:** 3,000-5,000 images (target)
- **Budget:** $2,500-3,000
- **Timeline:** 1 month
- **Annotation types:**
  - Stage 1: Bounding boxes (athlete vs referee)
  - Stage 2: 17-keypoint pose estimation (COCO format)

## Repository Structure

```
bjj-annotation/
├── docs/
│   ├── annotation_instructions.md    # Complete guide for annotators
│   └── platform_research.md          # Platform pricing comparison
├── scripts/
│   └── extract_frames.sh             # Extract frames from match videos
├── data/
│   ├── samples/                      # Sample annotated images
│   └── raw/                          # Raw frames from videos
└── README.md
```

## Platform Recommendation

**Top pick:** Amazon SageMaker Ground Truth (~$1,600 for 5,000 images)

**Budget option:** CVAT.ai + Upwork annotators (~$1,250-1,750)

See [docs/platform_research.md](docs/platform_research.md) for full comparison.

## Annotation Instructions

Complete annotator instructions available in [docs/annotation_instructions.md](docs/annotation_instructions.md).

## Next Steps

1. Extract sample frames from BJJ match videos
2. Get quotes from Roboflow and AWS SageMaker
3. Run 100-image trial annotation
4. Scale to full 5,000 images

## License

MIT
