# r.dem - GRASS Addon Toolbox for Topographic Change Analysis

Archive snapshot of the r.dem toolset for citation (Zenodo DOI).

The canonical, maintained source lives in the OSGeo grass-addons
repository under `src/raster/r.dem`. This repository is a one-direction
snapshot taken at manuscript submission; do not open pull requests here.

## Tools

r.dem.coregister, r.dem.nk, r.dem.icp, r.dem.stats, r.dem.bias,
r.dem.lod, r.dem.change, r.dem.errprop, r.dem.screen. See `src/r.dem.md`
for the toolbox overview.

## Install

```bash
g.extension extension=r.dem url=/path/to/this/repo/src
```

Or, once merged upstream:

```bash
g.extension extension=r.dem
```

## Updating the snapshot

```bash
./sync.sh            # rsync from the grass-addons worktree
git add -A && git commit -m "Sync snapshot"
git tag v1.0.0       # tag mints the Zenodo DOI once integration is on
git push --follow-tags
```

## Citation

See `CITATION.cff`. The associated manuscript is White, C.T. et al.
(in preparation), Post-Hurricane Topographic Change Assessment Using
Civil Air Patrol Aerial Imagery and Structure-from-Motion
Photogrammetry, Remote Sensing (MDPI).
