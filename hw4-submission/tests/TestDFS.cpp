#include "../lib/Graph.hpp"
#include <iostream>
#include <cassert>

void testDFS() {
    std::vector<std::pair<int, int>> edges = {{1, 2}, {2, 3}, {3, 4}, {4, 2}};
    Graph<int> graph(edges);

    auto traversal = graph.DFS();

    std::cout << "DFS Traversal: ";
    for (const auto& node : traversal) {
        std::cout << node << " ";
    }
    std::cout << std::endl;

    std::set<int> traversal_set(traversal.begin(), traversal.end());
    std::set<int> expected_set = {1, 2, 3, 4};

    assert(traversal_set == expected_set);

    std::cout << "DFS test passed!\n";
}

int main() {
    testDFS();
    return 0;
}
