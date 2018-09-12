#' Dijkstra Algorithm
#'
#' @param graph  A data.frame, it has to consist of 3 vectors named 'v1', 'v2' and 'w' and all must have the same length as shown in the example.
#' @param init_node A number.
#'
#' @return A vector consisting of the shortest paths from the node of origin "init_node" to the rest of the nodes. This is given ordering the nodes from smallest to largest.
#' @export
#'
#' @examples
#' @references https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm#Pseudocode
dijkstra = function(graph, init_node) {
  if (!is.data.frame(graph) || length(graph) != 3) stop()
  if (!is.numeric(init_node)) stop()
  if (length(setdiff(names(graph),  c('v1', 'v2', 'w'))) > 1) stop()
  if (!init_node %in% graph$v1) stop()

  # Algorithm

  ## 1
  ### Creating a data frame containing information about if the edge has been visited and it's distance from init_node
  nodes = data.frame(unique(graph[1]),
                     rep(FALSE, times = length(graph[1])),
                     rep(Inf, times = length(graph[1])))
  names(nodes) = c("Edge", "Visited", "Distance")

  print(nodes)

  ## 2
  ### Set the distance to to init_node to 0 and set the current_node to init_node
  nodes[nodes$Edge == init_node, 3] = 0
  current_node = init_node

  while (nrow(nodes[!nodes$Visited,]) > 0) {

    ## 3
    ### Go through all unvisited neighbors and calculate the tentative distance
    for (i in 1:nrow(graph)) {
      # Only consider neighbors && unvisited
      if (graph[i, 1] == current_node && !nodes[nodes$Edge == graph[i, 2], 2]) {
        tentative.distance = graph[i, 3] + nodes[nodes$Edge == current_node, 3]
        if (tentative.distance < nodes[nodes$Edge == graph[i, 2], 3]) {
          nodes[nodes$Edge == graph[i, 2], 3] = tentative.distance
        }
      }
    }

    ## 4
    ### Mark as visited
    nodes[nodes$Edge == current_node, 2] = TRUE

    ## 5
    ### If destination is marked visisted or the smallest unvisited node as infinity distance, stop
    unvisited.nodes = nodes[nodes$Visited == FALSE,]

    if (length(unvisited.nodes[, 3]) != 0) {
      current_node = unvisited.nodes[unvisited.nodes[[3]] == min(unvisited.nodes[, 3]), 1]
      if (length(current_node) > 1) {
        current_node = current_node[1] # min can return two entries. The algorithm doesn't tell which one to use, so we will use the first. Maybe there is a smarter way to solve this in R
      }
    }
  }
  return(nodes$Distance)
}

