#include "../lib/Graph.hpp"
#include <iostream>
#include <cassert>

void testGraphConstruction() {
    std::vector<std::pair<int, int>> edges = {{1, 2}, {2, 3}, {3, 4}};
    Graph<int> graph(edges);

    assert(graph.size() == 4);
    assert(graph.hasEdge(1, 2));
    assert(graph.hasEdge(2, 3));
    assert(graph.hasEdge(3, 4));
    assert(!graph.hasEdge(4, 1));

    std::cout << "Graph construction test passed!\n";
}

int main() {
    testGraphConstruction();
    return 0;
}
