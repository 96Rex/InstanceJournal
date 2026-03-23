# 副本手册

副本手册是魔兽世界原生风格的复刻版.
默认情况下,您可以通过按Shift+J来打开窗口.(您也可以在按键设置里手动修改成自己喜欢的快捷键)


## 注意
此复刻版本只支持中文语言客户端,未来考虑反向兼容英文语言客户端!!!

此复刻版本只支持中文语言客户端,未来考虑反向兼容英文语言客户端!!!!!!!

此复刻版本只支持中文语言客户端,未来考虑反向兼容英文语言客户端!!!!!!!!!



## 特点

- 列出所有副本和团本,包括乌龟服新增内容.
- 详细说明每个BOSS的能力和战利品.
- 允许在聊天中链接技能和战利品.
- 提供一个搜索栏,可以快速找到任何物品、技能、副本、BOSS
- 在世界地图上显示副本入口和世界BOSS位置;在副本地图上显示所有BOSS位置,点击可查看战利品列表.
- 改善了整个世界地图的体验
- 多种本地化语言支持
## 截图

<details>
<summary>主界面</summary>
<img width="600" height="377" alt="dungeons-tab" src="https://github.com/user-attachments/assets/38777084-313a-436c-ba8a-54cf33d53964" />
<img width="600" height="377" alt="raids-tab" src="https://github.com/user-attachments/assets/ef03b4a4-976a-4a90-a830-83f6fc015f80" />
</details>
<details>
<summary>地下城内容界面</summary>
<img width="634" height="377" alt="instance-overview-tab" src="https://github.com/user-attachments/assets/903b18a6-52bc-418a-86d7-ebfcfc8c688e" />
<img width="634" height="377" alt="abilities-tab" src="https://github.com/user-attachments/assets/a6c8535b-5b45-431a-a81c-d6c0a382480b" />
<img width="634" height="377" alt="instance-loot-tab" src="https://github.com/user-attachments/assets/bde67b61-e7f6-4d20-ab93-ab696dc1ec41" />
<img width="634" height="377" alt="boss-loot-tab" src="https://github.com/user-attachments/assets/29c3b3c7-e14c-47c2-ad30-a28437af76be" />
<img width="600" height="377" alt="search-result" src="https://github.com/user-attachments/assets/664671fa-a119-4e12-b105-8ef53261bc71" />
</details>
<details>
<summary>世界地图标注</summary>
<img width="600" height="427" alt="map-world-entrances" src="https://github.com/user-attachments/assets/37b067da-007a-4089-925c-660ad615ce78" />
<img width="600" height="427" alt="map-instance-bosses" src="https://github.com/user-attachments/assets/713da654-6fbd-4c79-a401-b593112ea7e1" />
</details>

## 如何安装

### 乌龟服启动器 (**推荐**)
  
1. 打开乌龟服启动器，导航到顶部的“插件”选项卡
2. 按下“添加新插件”按钮并将以下URL粘贴到字段中：“https://github.com/96Rex/InstanceJournal.git”
3. 在角色选择屏幕上的插件菜单中启用插件

### 手动安装
  
1. 下载[最新版本](https://codeload.github.com/96Rex/InstanceJournal/zip/refs/heads/master) 
2. 解压文件
3. 将文件夹从“InstanceJournal-master”重命名为“InstanceJournal”
4. 将重命名的文件夹复制到“WoW-Directory\Interface\AddOns”中
5. 在角色选择屏幕上的插件菜单中启用插件。

## 兼容性

这个插件是为TurtleWoW设计和测试的。它应该与几乎所有的插件兼容。如果出现不兼容情况，请通过此存储库的“问题”选项卡提交异常。

## 已知问题

- 一些副本内部地图没有明确分层（黑石塔上层/下层, 通灵学院）,游戏客户端限制,目前无法兼容.
- 一些描述不太准确
- 大多数BOSS技能缺失，有些可能有不正确的细节
- 双手武器会错误的出现在一些职业分类里(例如选择法师职业时会显示双手剑,因为代码逻辑没有判断单双手)

## 与原作者不同的地方

- 因为语言环境的原因搜索功能限制为BOSS名字,后续修复到所有内容
- 副本/团本排序方式按照手动排序(原本为名称A-Z降序)
- 地下城内容界面默认显示战利品列表(原本为地下城介绍)
- 战利品列表默认显示所有职业(原本为自动选择当前角色职业)


请通过此存储库上的“问题”选项卡报告您遇到的任何问题。

## 未来计划

- 完善每个BOSS技能
- 每个地下城相关的任务
- 在世界地图上为世界BOSS添加标签,显示是否被击杀
- 增加一个伴生插件，额外的自定义选项，一个小地图按钮，聊天命令，和更多


