#-----------------------------------------------------------------------
# Load the lattice packages and customize outputs graphics
library(lattice)
library(latticeExtra)
library(grid)

trellis.par.set(canonical.theme(color = FALSE))
ac <- list(pad1 = 0.5, pad2 = 0.65, tck = 0.5)
trellis.par.set(
    reference.line = list(col = "gray90"),
    strip.background = list(col = c("gray85", "gray75")),
    box.rectangle = list(col = 1, fill = c("gray80")),
    box.umbrella = list(col = 1, lty = 1),
    par.sub.text = list(
        font = 1, just = "left", cex = 0.9,
        x = grid::unit(10, "mm")),
    box.dot = list(pch = "|"),
    plot.polygon = list(col = "gray90"),
    layout.widths = list(
        left.padding = 0.25,
        right.padding = -1,
        ylab.axis.padding = 0),
    layout.heights = list(
        bottom.padding = 0.25,
        top.padding = 0,
        axis.xlab.padding = 0,
        xlab.top = 0),
    axis.components = list(
        bottom = ac, top = ac,
        left = ac, right = ac)
)

# Settings for legends
ltys <- trellis.par.get("superpose.line")$lty
pchs <- trellis.par.get("superpose.symbol")$pch
cols <- trellis.par.get("superpose.polygon")$col
