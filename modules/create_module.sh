#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'EOF'
Usage: modules/create_module.sh <module-name>

Creates a new module under modules/<module-name> from modules/templates/basic.

The script is intentionally non-destructive:
  - it refuses to overwrite an existing module directory
  - it does not initialize, delete, or rewrite any .git directory

Module names should use letters, numbers, underscores, and dashes.
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ $# -ne 1 ]]; then
  usage
  exit 1
fi

module_name="$1"

if [[ ! "$module_name" =~ ^[A-Za-z0-9_-]+$ ]]; then
  echo "Invalid module name: $module_name" >&2
  echo "Use only letters, numbers, underscores, and dashes." >&2
  exit 1
fi

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd -- "$script_dir/.." && pwd)"
template_dir="$script_dir/templates/basic"
target_dir="$script_dir/$module_name"

if [[ ! -d "$template_dir" ]]; then
  echo "Template directory not found: $template_dir" >&2
  exit 1
fi

if [[ -e "$target_dir" ]]; then
  echo "Refusing to overwrite existing path: $target_dir" >&2
  exit 1
fi

loader_name="$(printf '%s' "$module_name" | sed -E 's/[^A-Za-z0-9_]/_/g')"
module_variable="$(printf '%s' "$loader_name" | tr '[:lower:]' '[:upper:]')"
class_name="$(printf '%s' "$module_name" | sed -E 's/[^A-Za-z0-9]+/ /g' | awk '{ for (i = 1; i <= NF; ++i) { printf toupper(substr($i, 1, 1)) substr($i, 2) } }')"
class_name="${class_name:-Module}"

mkdir -p "$target_dir/src" "$target_dir/conf" "$target_dir/data/sql/auth" "$target_dir/data/sql/character" "$target_dir/data/sql/world"

render_template() {
  local source_file="$1"
  local target_file="$2"

  sed \
    -e "s|MODULE-NAME|$module_name|g" \
    -e "s|LOADER-NAME|$loader_name|g" \
    -e "s|MODULE-VARIABLE|$module_variable|g" \
    -e "s|CLASS-NAME|$class_name|g" \
    "$source_file" > "$target_file"
}

render_template "$template_dir/src/module.cpp.in" "$target_dir/src/${module_name}.cpp"
render_template "$template_dir/conf/module.conf.dist.in" "$target_dir/conf/${module_name}.conf.dist"
render_template "$template_dir/module.cmake.in" "$target_dir/${module_name}.cmake"
render_template "$template_dir/README.md.in" "$target_dir/README.md"

touch "$target_dir/data/sql/auth/.gitkeep" "$target_dir/data/sql/character/.gitkeep" "$target_dir/data/sql/world/.gitkeep"

cat <<EOF
Created module: modules/$module_name

Next steps:
  cmake -S "$repo_root" -B <build-dir> -DMODULES=static
  or set MODULE_$module_variable=static/dynamic after CMake discovers the module.
EOF
