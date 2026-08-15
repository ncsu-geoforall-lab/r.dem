# r.dem - GRASS Addon Toolset for Topographic Change Analysis

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.21940875.svg)](https://doi.org/10.5281/zenodo.21940875)

Archive snapshot of the r.dem toolset for citation (Zenodo DOI).

The canonical, maintained source lives in the OSGeo grass-addons
repository under `src/raster/r.dem`, submitted as
[grass-addons#1829](https://github.com/OSGeo/grass-addons/pull/1829).
This repository is a one-direction snapshot taken at manuscript
submission; do not open pull requests here.

## Tools

| Tool | Purpose |
|---|---|
| `r.dem.coregister` | PGCP vertical bias correction, optionally chaining Nuth and Kaab and ICP |
| `r.dem.nk` | Nuth and Kaab (2011) horizontal and vertical co-registration |
| `r.dem.icp` | Robust multi-scale point-to-plane ICP |
| `r.dem.bias` | Systematic bias removal by regression, spline, or local trimmed median |
| `r.dem.stats` | Terrain surface metrics used as DoD predictors |
| `r.dem.lod` | Level of Detection, uniform and spatially variable |
| `r.dem.change` | DoD with cleanup, LoD masking, and volumetric summary |
| `r.dem.errprop` | Uncertainty propagation and significance classes |
| `r.dem.screen` | Regional change screening |

See `src/r.dem.md` for the toolset overview and `src/r_dem_examples.ipynb`
for a worked example that runs on the GRASS North Carolina sample dataset
and regenerates every figure in the manuals.

## Install

```bash
g.extension extension=r.dem url=/path/to/this/repo/src
```

Or, once merged upstream:

```bash
g.extension extension=r.dem
```

## Tests

```bash
# pytest, synthetic data, no sample dataset needed
grass --tmp-project XY --exec python -m pytest src/

# gunittest, against the North Carolina sample dataset
grass -c $GRASSDATA/nc_spm_full_v2alpha2/rdem_test --exec \
    python -m unittest discover -s src/testsuite
```

## Updating the snapshot

```bash
./sync.sh            # rsync from the grass-addons worktree
git add -A && git commit -m "Sync snapshot"
git tag v1.0.0       # tag mints the Zenodo DOI once integration is on
git push --follow-tags
```

## Citation

Cite the version you used. This release is
[10.5281/zenodo.21940777](https://doi.org/10.5281/zenodo.21940777); the
concept DOI [10.5281/zenodo.21940776](https://doi.org/10.5281/zenodo.21940776)
always resolves to the latest release. Machine-readable metadata is in
`CITATION.cff`.

The associated manuscript is White, C.T., Regmi, P.,
Reckling, W., and Mitasova, H. (in preparation), Volumetric Change
Detection with SfM Photogrammetry from Rapid-Response Aerial Imagery after
Hurricane Helene, Remote Sensing (MDPI).
