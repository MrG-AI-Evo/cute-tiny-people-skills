# Tiny People Theater Skills｜小人剧场

两款把真实照片变成“小人叙事”视觉作品的 Codex Skills：**Tiny People Theater** 与 **Tiny People Theater: Split-Screen Edition**。上传照片后，可直接调用对应 Skill 出图；默认每张照片只生成一张成品，不批量出变体。

> 推荐从下面列出的两个独立仓库安装。这个仓库保留为系列总目录和合集版本。

搜索关键词：小人剧场 Skill、小人剧场分屏版 Skill、真实照片趣味小人、照片小人海报、Codex image skill、tiny people photo skill。

## 包含的 Skills

### Tiny People Theater｜小人剧场

Skill 名：`$tiny-people-theater`

从原照片提取 1–3 个真实视觉锚点，生成一张独立的 3:2 趣味小人故事图。只保留新生成的小人叙事画面，不制作原图对照、上下拼接或多图网格。

支持四种统一人物语言：细线编辑、松弛涂鸦、几何极简、诗意轮廓。

### Tiny People Theater: Split-Screen Edition｜小人剧场分屏版

Skill 名：`$tiny-people-theater-split-screen`

生成一张完整的 3:4 竖版编辑海报：上半部分保留真实照片，下半部分用 1–3 个照片视觉锚点和 6–8 个极简黑线小人物重构连续故事。上下严格各占 50%。

## 安装

在 Codex 中调用 `$skill-installer`，并粘贴你想安装的独立 GitHub 仓库：

- `https://github.com/MrG-AI-Evo/tiny-people-theater-skill`
- `https://github.com/MrG-AI-Evo/tiny-people-theater-split-screen-skill`

也可以克隆本仓库，将对应 Skill 目录复制到个人 Skills 目录后重启 Codex。

可直接把下面任意一句发给 Codex：

```text
请使用 $skill-installer 从仓库根目录安装 Tiny People Theater：
https://github.com/MrG-AI-Evo/tiny-people-theater-skill
```

```text
请使用 $skill-installer 从仓库根目录安装 Tiny People Theater: Split-Screen Edition：
https://github.com/MrG-AI-Evo/tiny-people-theater-split-screen-skill
```

## 使用

上传一张或多张真实照片，然后说：

- `用 $tiny-people-theater 直接出图`
- `用 $tiny-people-theater-split-screen 直接出图`
- `用 $tiny-people-theater，先问我`
- `用 $tiny-people-theater，小人风格：松弛涂鸦`
- `用 $tiny-people-theater-split-screen，整组统一`

默认行为：一张照片对应一张独立成品。只有用户明确要求时才会询问创意方向或生成多个方案。

## 文件兼容

两个 Skills 都包含 `scripts/normalize_photo.sh`。当 Apple Photos 导出的 `.jpeg` 实际为 MPO 或 HEIC、导致图像工具无法读取时，可在不修改原文件的前提下转换为普通 JPEG。该脚本需要 ImageMagick。

## 说明

- 核心主体、材质、颜色、空间关系和照片身份特征应忠于上传的原图。
- 不擅自添加品牌、地点、动物、建筑、Logo 或无关道具。
- 图像生成结果仍可能存在文字或肢体细节偏差；Skill 会在出现实质性错误时进行最多一次聚焦修正。
