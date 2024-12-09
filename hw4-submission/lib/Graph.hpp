#ifndef GRAPH_HPP
#define GRAPH_HPP

#include <cstddef>
#include <optional>
#include <unordered_map>
#include <map>
#include <set>
#include <vector>
#include <list>
#include <queue>
#include <algorithm>
#include "GraphNode.hpp"
template <typename T>
class Graph {
private:
    std::map<T, std::set<T>> _adjList;
    std::map<T, GraphNode<T>> _vertices;

    void DFS_visit(const T &u, std::list<T> &record);

public:
    Graph() = default;
    Graph(const std::vector<std::pair<T, T>> &edges);
    Graph(const std::map<T, std::set<T>> &adjList);

    int size() const;
    void addVertex(T vertex);
    void addEdge(T from, T to);
    bool hasEdge(T from, T to) const;
    std::optional<std::set<T>> getNeighbors(T vertex) const;

    std::vector<T> BFS(T start);
    int shortestPath(T start, T end);
    std::list<T> DFS();
};

template <typename T>
Graph<T>::Graph(const std::vector<std::pair<T, T>> &edges) {
    for (const auto &edge : edges) {
        addEdge(edge.first, edge.second);
    }
}

template <typename T>
Graph<T>::Graph(const std::map<T, std::set<T>> &adjList) {
    for (const auto &pair : adjList) {
        addVertex(pair.first);
        for (const auto &neighbor : pair.second) {
            addEdge(pair.first, neighbor);
        }
    }
}

template <typename T>
int Graph<T>::size() const {
    return _vertices.size();
}

template <typename T>
void Graph<T>::addVertex(T vertex) {
    if (_vertices.find(vertex) == _vertices.end()) {
        _vertices[vertex] = GraphNode<T>(vertex);
        _adjList[vertex] = {};
    }
}

template <typename T>
void Graph<T>::addEdge(T from, T to) {
    addVertex(from);
    addVertex(to);
    _adjList[from].insert(to);
}

template <typename T>
bool Graph<T>::hasEdge(T from, T to) const {
    if (_adjList.find(from) == _adjList.end()) {
        return false;
    }
    return _adjList.at(from).find(to) != _adjList.at(from).end();
}

template <typename T>
std::optional<std::set<T>> Graph<T>::getNeighbors(T vertex) const {
    if (_adjList.find(vertex) == _adjList.end()) {
        return std::nullopt;
    }
    return _adjList.at(vertex);
}

template <typename T>
std::vector<T> Graph<T>::BFS(T start) {
    std::vector<T> traversal;
    if (_vertices.find(start) == _vertices.end()) {
        return traversal;
    }

    std::queue<T> queue;
    std::unordered_map<T, bool> visited;

    queue.push(start);
    visited[start] = true;

    while (!queue.empty()) {
        T current = queue.front();
        queue.pop();
        traversal.push_back(current);

        for (const auto &neighbor : _adjList[current]) {
            if (!visited[neighbor]) {
                visited[neighbor] = true;
                queue.push(neighbor);
            }
        }
    }

    return traversal;
}

template <typename T>
int Graph<T>::shortestPath(T start, T end) {
    if (_vertices.find(start) == _vertices.end() || _vertices.find(end) == _vertices.end()) {
        return -1;
    }

    std::queue<T> queue;
    std::unordered_map<T, int> distance;

    for (const auto &vertex : _vertices) {
        distance[vertex.first] = -1;
    }

    queue.push(start);
    distance[start] = 0;

    while (!queue.empty()) {
        T current = queue.front();
        queue.pop();

        for (const auto &neighbor : _adjList[current]) {
            if (distance[neighbor] == -1) {
                distance[neighbor] = distance[current] + 1;
                queue.push(neighbor);

                if (neighbor == end) {
                    return distance[neighbor];
                }
            }
        }
    }

    return -1;
}

template <typename T>
std::list<T> Graph<T>::DFS() {
    std::unordered_map<T, bool> visited;
    std::list<T> record;

    for (auto &vertex : _vertices) {
        vertex.second.color = White;
    }

    for (const auto &vertex : _vertices) {
        if (vertex.second.color == White) {
            DFS_visit(vertex.first, record);
        }
    }

    return record;
}

template <typename T>
void Graph<T>::DFS_visit(const T &u, std::list<T> &record) {
    auto &node = _vertices[u];
    node.color = Gray;

    for (const auto &neighbor : _adjList[u]) {
        if (_vertices[neighbor].color == White) {
            _vertices[neighbor].predecessor = u;
            DFS_visit(neighbor, record);
        }
    }

    node.color = Black;
    record.push_front(u);
}

#endif
