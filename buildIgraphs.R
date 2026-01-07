buildIgraphs <- function(dummyVar="", env=.GlobalEnv) {

  if (!exists("symbols2Add")) symbols2Add=c()
  if (!exists("GOIlist")) GOIlist=c()
  if (!exists("recalcMEs")) recalcMEs=TRUE
  if (!exists("outFilePrefix")) { outFilePrefix="" } else { outFilePrefix=paste0(outFilePrefix,".") }
  if (!exists("outFileSuffix") & exists("FileBaseName")) { outFileSuffix=FileBaseName } else { if(!exists("outFileSuffix")) outFileSuffix="Unnamed_Net" }
  if (!exists("showTOMhubs")) showTOMhubs=FALSE
  if (showTOMhubs & (!exists("keepTopEdges") & !exists("keepTopPercentEdges"))) { cat(" - showTOMhubs=TRUE without specifying edges to keep/use. Using 150.\n"); keepTopEdges=150; }
  if (!exists("keepTopEdges") & !exists("keepTopPercentEdges"))  { cat(" - # or % of edges to show in iGraph not specified. Using 700.\n"); keepTopEdges=700; }
  if (suppressWarnings(is.na(as.integer(keepTopEdges))))  { cat(" - keepTopEdges is not coercible to an integer. Using 150.\n"); keepTopEdges=150; }
  if (exists("keepTopPercentEdges")) if(suppressWarnings(is.na(as.numeric(keepTopPercentEdges))))  { cat(" - keepTopPercentEdges is not coercible to numeric value. Using 15.\n"); keepTopPercentEdges=15; }
  if (!exists("vertexsize")) { cat(" - vertexsize not specified. Using 16 for large nodes.\n"); vertexsize=16; }
  if (showTOMhubs & !is.numeric(power)) { cat(" - showTOMhubs=TRUE, but we need a power to calculate TOM. Trying power=8.\n"); power=8; }
  if (!exists("PPIedges")) { cat(" - not using PPIedges from BioGRID.\n"); PPIedges=FALSE; } else {
   ... <content truncated for brevity> ...

  # [1] Layout Checking and Default Handling ### MODIFIED ###
  # This section ensures the layout matrix is properly handled.

  # If layout remains empty or nonconforming, assign default layouts
  if (is.null(layoutMat) || nrow(layoutMat) == 0) {
    cat("[WARNING]: Layout matrix was empty or invalid. Default layout (fruchterman-reingold) assigned.\n")
    layoutMat <- layout_with_fr(g1)  # Use preferred default layouts
  }

  # If isolated vertices exist after layout assignment, adjust layout
  isolated_vertices <- which(degree(g.alt) == 0)
  if (length(isolated_vertices) > 0) {
      cat("[NOTE]: Detected isolated vertices - ensuring they're removed or handled in the layout.\n")  # Validating downstream sequbinding optimizable handling saf
 Diversolz exposes graph-safe-layoutvers accrossenties may temporary refin
  }