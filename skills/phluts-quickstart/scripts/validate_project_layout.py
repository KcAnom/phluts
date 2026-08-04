#!/usr/bin/env python3
"""Validate required project structure for a Phluts-enabled Flutter app."""

from __future__ import annotations

import argparse
from pathlib import Path
import re
import sys


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Validate Phluts project layout and required files.",
    )
    parser.add_argument(
        "--project-root",
        required=True,
        help="Path to Flutter project root.",
    )
    return parser.parse_args()


def has_phluts_screen(phluts_dir: Path) -> bool:
    for file in phluts_dir.rglob("*.dart"):
        text = file.read_text(encoding="utf-8", errors="ignore")
        if re.search(r"@PhlutsScreen\s*\(", text):
            return True
    return False


def check_file(path: Path, label: str, failures: list[str]) -> None:
    if path.exists():
        print(f"[OK] {label}: {path}")
    else:
        print(f"[FAIL] Missing {label}: {path}")
        failures.append(label)


def main() -> int:
    args = parse_args()
    root = Path(args.project_root).expanduser().resolve()

    failures: list[str] = []

    if not root.exists() or not root.is_dir():
        print(f"[FAIL] Project root is not a directory: {root}")
        return 1

    check_file(root / "pubspec.yaml", "pubspec.yaml", failures)
    check_file(root / "lib" / "main.dart", "lib/main.dart", failures)
    check_file(
        root / "lib" / "default_phluts_options.dart",
        "lib/default_phluts_options.dart",
        failures,
    )

    phluts_dir = root / "phluts"
    if phluts_dir.exists() and phluts_dir.is_dir():
        print(f"[OK] phluts directory: {phluts_dir}")
        if has_phluts_screen(phluts_dir):
            print("[OK] Found at least one @PhlutsScreen annotation")
        else:
            print("[FAIL] No @PhlutsScreen annotations found under phluts/")
            failures.append("phluts-screen-annotation")
    else:
        print(f"[FAIL] Missing phluts directory: {phluts_dir}")
        failures.append("phluts-directory")

    if failures:
        print(f"\nValidation failed with {len(failures)} issue(s): {', '.join(failures)}")
        return 1

    print("\nValidation passed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
