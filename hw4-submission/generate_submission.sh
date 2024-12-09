rm -f hw4-submission.zip

zip -r hw4-submission.zip \
    lib/Graph.hpp \
    lib/GraphNode.hpp \
    tests/TestGraph.cpp \
    tests/TestBFS.cpp \
    tests/TestDFS.cpp \
    CMakeLists.txt \
    README.md \
    generate_submission.sh

echo "Submission package created: hw4-submission.zip"
