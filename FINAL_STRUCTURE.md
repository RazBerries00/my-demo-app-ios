# Final Test Structure - What Should Be Where

## ✅ Complete File List (Organized)

### Base/ (2 files)
```
Base/
├── MyDemoAppTestBase.swift    ← Move from utils/ folder
└── TestConfig.swift            ← Already created (NEW)
```

### PageObjects/ (8 files)
```
PageObjects/
├── BasePage.swift              ← Already created (NEW)
├── CartPage.swift              ← Already created (NEW)
├── CatalogPage.swift           ← Already created (NEW)
├── CheckoutPage.swift          ← Already created (NEW)
├── LoginPage.swift             ← Already created (NEW)
├── MenuPage.swift              ← Already created (NEW)
├── PageObject.swift            ← Keep (ORIGINAL)
└── ProductDetailsPage.swift    ← Already created (NEW)
```

### Tests/Critical/ (3 files)
```
Tests/Critical/
├── CheckoutFlowTests.swift     ← Already created (NEW)
├── EndToEndTests.swift         ← Already created (NEW)
└── LoginTests.swift            ← Already created (NEW)
```

### Tests/Demo/ (1 file)
```
Tests/Demo/
└── FailedTests.swift           ← Move from Tests/ folder
```

### Tests/Functional/Cart/ (1 file)
```
Tests/Functional/Cart/
└── CartTests.swift             ← Already created (NEW)
```

### Tests/Functional/Menu/ (1 file)
```
Tests/Functional/Menu/
└── MenuTests.swift             ← Already created (NEW)
```

### Tests/Functional/Navigation/ (1 file)
```
Tests/Functional/Navigation/
└── NavigationTest.swift        ← Move from Tests/ folder
```

### Tests/Functional/Product/ (2 files)
```
Tests/Functional/Product/
├── ProductDetailsTest.swift        ← Move from Tests/ folder
└── ProductListingPageTest.swift    ← Move from Tests/ folder
```

### Tests/Regression/ (2 files)
```
Tests/Regression/
├── LocalizationTest.swift      ← Move from Tests/ folder
└── RotationTest.swift          ← Move from Tests/ folder
```

### Tests/Sanity/ (1 file)
```
Tests/Sanity/
└── SanityTests.swift           ← Already created (NEW)
```

### Utilities/ (3 files)
```
Utilities/
├── TestData.swift              ← Already created (NEW)
├── TestHelpers.swift           ← Already created (NEW)
└── WaitHelpers.swift           ← Already created (NEW)
```

---

## 📋 Files That Need To Be MOVED

These 6 files currently in the wrong location need to move:

| Current Location | New Location | File Name |
|-----------------|--------------|-----------|
| `utils/` | `Base/` | MyDemoAppTestBase.swift |
| `Tests/` | `Tests/Demo/` | FailedTests.swift |
| `Tests/` | `Tests/Functional/Navigation/` | NavigationTest.swift |
| `Tests/` | `Tests/Functional/Product/` | ProductDetailsTest.swift |
| `Tests/` | `Tests/Functional/Product/` | ProductListingPageTest.swift |
| `Tests/` | `Tests/Regression/` | LocalizationTest.swift |
| `Tests/` | `Tests/Regression/` | RotationTest.swift |

---

## 🗑️ Folders That Should Be DELETED

After moving files:
- Delete empty `utils/` folder
- Delete empty root `Tests/` folder (all files should be in subfolders)

---

## ✅ Quick Checklist

After reorganizing, you should have:
- [ ] 0 files in `Tests/` root (all in subfolders)
- [ ] 0 files in `utils/` folder (moved to Base/)
- [ ] 2 files in `Base/`
- [ ] 8 files in `PageObjects/`
- [ ] 3 files in `Tests/Critical/`
- [ ] 1 file in `Tests/Demo/`
- [ ] 1 file in `Tests/Functional/Cart/`
- [ ] 1 file in `Tests/Functional/Menu/`
- [ ] 1 file in `Tests/Functional/Navigation/`
- [ ] 2 files in `Tests/Functional/Product/`
- [ ] 2 files in `Tests/Regression/`
- [ ] 1 file in `Tests/Sanity/`
- [ ] 3 files in `Utilities/`

**Total: 25 Swift files**
