#!/usr/bin/env bash
set -e

REPO_ROOT="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
echo "=========================================================="
echo "  [Hook] Change detected. Rebuilding RotationSolver...    "
echo "=========================================================="
dotnet build -c Debug "${REPO_ROOT}/RotationSolver/RotationSolver.csproj"
echo "=========================================================="
echo "  [Hook] RotationSolver rebuild completed successfully!   "
echo "=========================================================="
