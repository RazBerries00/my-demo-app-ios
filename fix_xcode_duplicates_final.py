#!/usr/bin/env python3
"""
Script to remove the remaining duplicate file references from Xcode project.pbxproj file.
This removes the older UUID series (4414E006-0013, 000A, 000C) and keeps the newer reorganized ones.
"""

# Old UUIDs to remove (from the first reorganization attempt)
OLD_REFS = {
    # Critical tests - old series
    '4414E0062EA3FC1B00FEA93A',  # CheckoutFlowTests.swift PBXFileReference
    '4414E02A2EA3FC1B00FEA93A',  # CheckoutFlowTests.swift PBXBuildFile
    '4414E0072EA3FC1B00FEA93A',  # EndToEndTests.swift PBXFileReference
    '4414E0292EA3FC1B00FEA93A',  # EndToEndTests.swift PBXBuildFile
    '4414E0082EA3FC1B00FEA93A',  # LoginTests.swift PBXFileReference
    '4414E0252EA3FC1B00FEA93A',  # LoginTests.swift PBXBuildFile
    # Functional tests - old series
    '4414E00A2EA3FC1B00FEA93A',  # CartTests.swift PBXFileReference
    '4414E0332EA3FC1B00FEA93A',  # CartTests.swift PBXBuildFile
    '4414E00C2EA3FC1B00FEA93A',  # MenuTests.swift PBXFileReference
    '4414E0342EA3FC1B00FEA93A',  # MenuTests.swift PBXBuildFile
    # Sanity tests - old series
    '4414E0132EA3FC1B00FEA93A',  # SanityTests.swift PBXFileReference
    '4414E02C2EA3FC1B00FEA93A',  # SanityTests.swift PBXBuildFile
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
    print("\nDone! All duplicates should now be removed.")

if __name__ == '__main__':
    main()
