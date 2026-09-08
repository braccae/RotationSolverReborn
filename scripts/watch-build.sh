#!/usr/bin/env bash
set -e

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
echo "Starting continuous live watcher for RotationSolver (rebuilds on file save)..."
dotnet watch --project "${REPO_ROOT}/RotationSolver/RotationSolver.csproj" build -c Debug
