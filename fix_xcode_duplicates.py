#!/usr/bin/env python3
"""
Script to remove duplicate file references from Xcode project.pbxproj file.
This keeps the newer references (4414E...) and removes the old ones (88...).
"""

import re
import sys

# Old UUIDs to remove (from previous organization)
OLD_REFS = {
    # FailedTests
    '88782DCA2A6130BA00CE5DC5',
    '88782DCB2A6130BA00CE5DC5',
    # ProductListingPageTest
    '88A847D62757B90D00B9F861',
    '88A847D72757B90E00B9F861',
    # ProductDetailsTest
    '88A847D82757BB4F00B9F861',
    '88A847D92757BB4F00B9F861',
    # NavigationTest
    '88A847DA2757BC3100B9F861',
    '88A847DB2757BC3100B9F861',
    # RotationTest
    '88AD24F92A5ABF81005732E7',
    '88AD24FA2A5ABF81005732E7',
}

def main():
    project_file = 'My Demo App.xcodeproj/project.pbxproj'

    with open(project_file, 'r') as f:
        content = f.read()

    original_lines = content.count('\n')

    # Remove lines containing old UUIDs
    lines = content.split('\n')
    filtered_lines = []
    removed_count = 0

    for line in lines:
        should_keep = True
        for old_ref in OLD_REFS:
            if old_ref in line:
                should_keep = False
                removed_count += 1
                print(f"Removing: {line.strip()[:100]}")
                break

        if should_keep:
            filtered_lines.append(line)

    new_content = '\n'.join(filtered_lines)

    with open(project_file, 'w') as f:
        f.write(new_content)

    print(f"\nRemoved {removed_count} lines with duplicate references")
    print(f"Original lines: {original_lines}")
    print(f"New lines: {len(filtered_lines)}")
    print("\nDone! Please open Xcode and verify the project builds correctly.")

if __name__ == '__main__':
    main()
