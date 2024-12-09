#include "../lib/Graph.hpp"
#include <iostream>
#include <cassert>

void testBFS() {
    std::vector<std::pair<int, int>> edges = {{1, 2}, {1, 3}, {2, 4}, {3, 4}};
    Graph<int> graph(edges);

    auto traversal = graph.BFS(1);
    std::vector<int> expected = {1, 2, 3, 4};
    assert(traversal == expected);

    int shortest = graph.shortestPath(1, 4);
    assert(shortest == 2);

    std::cout << "BFS and shortest path tests passed!\n";
}

int main() {
    testBFS();
    return 0;
}
