# Shiptivity Module 3 — Project File Structure

## 📁 專案路徑

```
/Users/yaolo/Desktop/-shiptivitas-3/
│
├── README.md              # 專案說明與任務需求
├── PATHFILE.md             # 本檔案 — 專案檔案結構說明
├── answer.sql              # ✅ SQL 查詢（PART 1 & PART 2）
├── report.html             # ✅ 互動式分析報告（圖表 + 改善方案）
├── shiptivity.db           # SQLite 資料庫（原始資料）
├── shiptivity.dump         # 資料庫備份（可還原至初始狀態）
└── .git/                   # Git 版本控制
```

---

## 📄 檔案說明

### `answer.sql`
- **用途**：包含兩個 SQL 查詢，回答 Module 3 的核心分析問題
- **PART 1**：計算看板功能上線（2018-06-02）前後的每日平均活躍用戶數（DAU）
- **PART 2**：統計每張卡片的狀態變更次數

### `report.html`
- **用途**：完整的互動式分析報告，可直接在瀏覽器開啟
- **包含內容**：
  - 📈 每日活躍用戶趨勢折線圖（標示功能上線日）
  - 🔄 卡片狀態變更次數分布圖（甜甜圈圖）
  - 🏆 狀態變更最多的卡片 Top 10（橫條圖）
  - 💡 三個可執行的改善方案（假設 / 預期影響 / 功能描述）

### `shiptivity.db`
- **用途**：SQLite 資料庫，包含以下資料表：
  - `user` — 使用者資料（100 位用戶）
  - `login_history` — 登入歷史記錄（2018-02 ~ 2019-02）
  - `card` — 卡片（任務）資料
  - `card_change_history` — 卡片狀態變更記錄

### `shiptivity.dump`
- **用途**：資料庫的初始備份檔，可用以下指令還原：
  ```bash
  sqlite3 shiptivity.db < shiptivity.dump
  ```

---

## 🚀 快速開始

```bash
# 進入專案目錄
cd /Users/yaolo/Desktop/-shiptivitas-3

# 執行 SQL 查詢
sqlite3 -header -column ./shiptivity.db < answer.sql

# 開啟分析報告
open report.html
```

---

## ✅ 任務完成清單

| # | 任務 | 狀態 | 檔案 |
|---|------|------|------|
| 1 | 每日平均活躍用戶數 SQL 查詢 | ✅ 完成 | `answer.sql` (PART 1) |
| 2 | 卡片狀態變更次數 SQL 查詢 | ✅ 完成 | `answer.sql` (PART 2) |
| 3 | DAU 趨勢圖表 | ✅ 完成 | `report.html` |
| 4 | 卡片狀態變更圖表 | ✅ 完成 | `report.html` |
| 5 | 三個改善方案 | ✅ 完成 | `report.html` |
