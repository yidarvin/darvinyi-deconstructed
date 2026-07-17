#!/usr/bin/env python3
"""Shared queue policy constants and image-count rules."""
from __future__ import annotations

from typing import Any


VALID_SOURCE_MODES = {"limited"}
LIMITED_SOURCE_MARKER = "fallback: limited"
LIMITED_CHAPTER_DISCLOSURE = "**Limited image availability.**"


def is_limited(entry: dict[str, Any]) -> bool:
    return entry.get("sourceMode") == "limited"


def minimum_images(entry: dict[str, Any]) -> int:
    value = entry.get("minImages", 4)
    return value if isinstance(value, int) and not isinstance(value, bool) else 4


def required_images(entry: dict[str, Any]) -> int:
    return 0 if is_limited(entry) else minimum_images(entry)
