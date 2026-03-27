# Gold Nanorod Detector 2.0 - Project Documentation
# 金纳米棒检测器 2.0 - 项目文档

---

## 1. Introduction / 项目简介

**[EN]** Gold Nanorod Detector 2.0 is a specialized automated tool designed to detect, segment, and measure gold nanorods (AuNRs) from Transmission Electron Microscopy (TEM) images. It transforms academic methodology into a user-friendly web application, providing precise statistical analysis and professional reports.

**[ZH]** 金纳米棒检测器 2.0 是一款专门用于从透射电子显微镜 (TEM) 图像中自动检测、分割和测量金纳米棒 (AuNRs) 的自动化工具。它将学术方法转化为易于使用的 Web 应用程序，提供精确的统计分析和专业的报告。

---

## 2. Key Features / 主要功能

**[EN]**
- **Automated Detection**: Uses K-means clustering and rUECS algorithms for high-precision particle segmentation.
- **Precise Measurement**: Extracts Length, Width, Aspect Ratio, and Volume using Rotated Bounding Boxes.
- **Folder Management**: Organize your research into folders for batch analysis.
- **Interactive Analysis**: Manually verify and exclude particles (noise, scale bars) before final calculation.
- **Flexible Calibration**: Supports automatic scale detection from `.dm3`/`.dm4`/`.emd` metadata or manual calibration.
- **Professional Export**: Generates Excel data sheets and PDF summary reports with histograms.

**[ZH]**
- **自动检测**: 使用 K-means 聚类和 rUECS 算法进行高精度颗粒分割。
- **精确测量**: 使用旋转边界框 (Rotated Bounding Boxes) 提取长度、宽度、长宽比和体积。
- **文件夹管理**: 将您的研究组织到文件夹中进行批量分析。
- **交互式分析**: 在最终计算前手动验证并排除颗粒（如噪声、比例尺）。
- **灵活校准**: 支持从 `.dm3`/`.dm4`/`.emd` 元数据自动检测比例尺或进行手动校准。
- **专业导出**: 生成包含直方图的 Excel 数据表和 PDF 总结报告。

---

## 3. Getting Started / 快速入门

### Run on Mac / 在 Mac 上运行
1. Open Terminal. / 打开终端。
2. Navigate to the project folder. / 进入项目文件夹。
3. Run: `./run_mac.sh` / 运行命令：`./run_mac.sh`
4. The app will open in your browser automatically. / 应用程序将自动在浏览器中打开。

### Run on Windows / 在 Windows 上运行
1. Double-click `Nanorod_Detector_Launcher_Windows.bat`. / 双击运行 `Nanorod_Detector_Launcher_Windows.bat`。
2. If prompted by Windows Defender, click "More Info" -> "Run Anyway". / 如果弹出 Windows Defender 提示，请点击“更多信息” -> “仍要运行”。
3. The app will open in your browser automatically. / 应用程序将自动在浏览器中打开。

---

## 4. User Workflow Guide / 用户工作流程

### Step 1: Create a Folder / 第一步：创建文件夹
Organize your images by project or sample name. / 按项目或样品名称组织您的图像。

### Step 2: Upload Images / 第二步：上传图像
Upload `.dm3`, `.dm4`, `.emd`, `.tiff`, `.jpg`, or `.png` files. **Tip:** Use `.dm3`/`.dm4` for automatic scale calibration. / 上传相关格式文件。**提示：** 使用 `.dm3`/`.dm4` 文件可实现自动比例尺校准。

### Step 3: Analyze Individual Images / 第三步：单张图像分析
Click an image to enter the Analysis View. / 点击图像进入分析视图。
1. **Verify**: Check the "Segmentation Overlay" and "Fitted AuNRs". / **验证**：检查“分割叠加图”和“拟合后的金纳米棒”。
2. **Exclude**: Uncheck incorrect detections (like dirt or scale bars) in the sidebar table. / **排除**：在侧边栏表格中取消选中错误的检测目标（如杂质或比例尺）。
3. **Calculate**: Press "Calculate Analysis" to generate statistics and histograms. / **计算**：点击“计算分析”生成统计数据和直方图。
4. **Save**: Click "Add to Folder Analysis" to include this image in the final project report. / **保存**：点击“添加到文件夹分析”将此图像包含在最终的项目报告中。

### Step 4: Aggregate Report / 第四步：汇总报告
Back in the Folder View, click **"View Analysis"** to see combined statistics for all saved images and export the final folder-wide Excel report. / 返回文件夹视图，点击**“查看分析”**以查看所有已保存图像的汇总统计数据，并导出最终的文件夹级 Excel 报告。

---

## 5. Technical Background / 技术背景

**[EN]** The detection engine is based on the methodology described in *JACS Au 2021, 1, 316−327*. It employs K-means clustering for robust background separation and the rUECS algorithm to resolve overlapping or touching particles. Precise dimensions are extracted by fitting a minimum area rotated rectangle to each detected object.

**[ZH]** 检测引擎基于 *JACS Au 2021, 1, 316−327* 中描述的方法。它采用 K-means 聚类进行稳健的背景分离，并使用 rUECS 算法解决颗粒重叠或接触的问题。通过为每个检测到的物体拟合最小面积旋转矩形来提取精确尺寸。

---

## 6. FAQ & Troubleshooting / 常见问题与排障

**Q: Why is my image background red/blue?**
**A:** This is the "Segmentation Overlay". It helps you see exactly which areas the AI identifies as particles.
**问：为什么我的图像背景是红色/蓝色的？**
**答：** 这是“分割叠加图”。它能帮助您准确查看 AI 将哪些区域识别为颗粒。

**Q: The AI didn't detect my particles correctly.**
**A:** Try the **"Invert"** button in the Analysis View if your particles are lighter than the background.
**问：AI 没能正确检测到我的颗粒。**
**答：** 如果您的颗粒比背景颜色浅，请尝试分析视图中的**“反转 (Invert)”**按钮。

**Q: Where are my results saved?**
**A:** All results are stored in the `results/` directory, and original uploads are in `uploads/`.
**问：我的结果保存在哪里？**
**答：** 所有结果都存储在 `results/` 目录中，原始上传文件在 `uploads/` 中。
