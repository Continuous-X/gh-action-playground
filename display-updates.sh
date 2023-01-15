#!/bin/bash
mvn --version
echo """
display parent updates to parent-updates.txt
"""
mvn versions:display-parent-updates > parent-updates.txt
echo """
display property updates to property-updates.txt
"""
mvn versions:display-property-updates > property-updates.txt
echo """
display dependency updates to dependency-updates.txt
"""
mvn versions:display-dependency-updates -DprocessDependencyManagement=false > dependency-updates.txt
echo """
display plugin updates to plugin-updates.txt
"""
mvn versions:display-plugin-updates > plugin-updates.txt

echo """
display dependency tree to dependency-tree.txt
"""
mvn dependency:tree > dependency-tree.txt
