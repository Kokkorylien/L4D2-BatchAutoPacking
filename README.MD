# 基于BAT的简单脚本实现L4D2人物mod素材的自动批量处理打包
## 功能简述
本脚本适用于需要制作8人版本的L4D2人物mod的mod作者。
它能够将处在特定相对路径并符合一定命名规则的大量L4D2人物mod素材进行自动批量处理，最终封装为vpk，显著减少mod作者在手动修改打包操作上的时间花费，并提高mod作者在人物mod上的测试和更新效率。
## 原理叙述
#### 脚本正常运行自带文件：
 "auto.bat"
"source\Description.txt"

1. 修改 "source\Description.txt" 的内容以变更最后得到的每个vpk的内容描述，即在附件内容内vpk标题下方的。
2. 你需要使用文本文件编辑工具修改批处理文件 "auto.bat"，以修改每个vpk的作者名称。
3. 若有需要，可以修改为区别vpk在内容描述末尾添加的 "Replaces xxx"。例如 echo Replaces Zoey including light model.>>source\addoninfo.zoey.txt 这一行(255)，可以将 'Replaces Zoey including light model.' 这一文段改为 '替换佐伊（包括light模型）。'。
#### 脚本正常运行额外需要文件（源素材）：
"source\addonimage.jpg"

"source\models\survivors\survivor_NamVet.dx90.vtx"
"source\models\survivors\survivor_namvet.mdl"
"source\models\survivors\survivor_namvet.vvd"

"source\models\survivors\namvet\namvet_deathpose.dx90.vtx"
"source\models\survivors\namvet\namvet_deathpose.mdl"
"source\models\survivors\namvet\namvet_deathpose.vvd"

"source\models\survivors\survivor_teenangst.dx90.vtx"
"source\models\survivors\survivor_teenangst.mdl"
"source\models\survivors\survivor_teenangst.vvd"

"source\models\survivors\survivor_teenangst_light.dx90.vtx"
"source\models\survivors\survivor_teenangst_light.mdl"
"source\models\survivors\survivor_teenangst_light.vvd"

"source\models\survivors\survivor_biker.dx90.vtx"
"source\models\survivors\survivor_biker.mdl"
"source\models\survivors\survivor_biker.vvd"

"source\models\survivors\survivor_biker_light.dx90.vtx"
"source\models\survivors\survivor_biker_light.mdl"
"source\models\survivors\survivor_biker_light.vvd"

"source\models\survivors\survivor_Manager.dx90.vtx"
"source\models\survivors\survivor_manager.mdl"
"source\models\survivors\survivor_manager.vvd"

"source\models\survivors\survivor_Coach.dx90.vtx"
"source\models\survivors\survivor_coach.mdl"
"source\models\survivors\survivor_coach.vvd"

"source\models\survivors\survivor_gambler.dx90.vtx"
"source\models\survivors\survivor_gambler.mdl"
"source\models\survivors\survivor_gambler.vvd"

"source\models\survivors\survivor_mechanic.dx90.vtx"
"source\models\survivors\survivor_mechanic.mdl"
"source\models\survivors\survivor_mechanic.vvd"

"source\models\survivors\survivor_producer.dx90.vtx"
"source\models\survivors\survivor_producer.mdl"
"source\models\survivors\survivor_producer.vvd"

"source\models\weapons\arms\v_arms_bill.dx90.vtx"
"source\models\weapons\arms\v_arms_bill.mdl"
"source\models\weapons\arms\v_arms_bill.vvd"

"source\models\weapons\arms\v_arms_zoey.dx90.vtx"
"source\models\weapons\arms\v_arms_zoey.mdl"
"source\models\weapons\arms\v_arms_zoey.vvd"

"source\models\weapons\arms\v_arms_francis.dx90.vtx" 
"source\models\weapons\arms\v_arms_francis.mdl" 
"source\models\weapons\arms\v_arms_francis.vvd"

"source\models\weapons\arms\v_arms_louis.dx90.vtx" 
"source\models\weapons\arms\v_arms_louis.mdl" 
"source\models\weapons\arms\v_arms_louis.vvd" 

"source\models\weapons\arms\v_arms_coach_new.dx90.vtx"
"source\models\weapons\arms\v_arms_coach_new.mdl"
"source\models\weapons\arms\v_arms_coach_new.vvd"

"source\models\weapons\arms\v_arms_gambler_new.dx90.vtx" 
"source\models\weapons\arms\v_arms_gambler_new.mdl" 
"source\models\weapons\arms\v_arms_gambler_new.vvd" 

"source\models\weapons\arms\v_arms_mechanic_new.dx90.vtx" 
"source\models\weapons\arms\v_arms_mechanic_new.mdl" 
"source\models\weapons\arms\v_arms_mechanic_new.vvd" 

"source\models\weapons\arms\v_arms_producer_new.dx90.vtx" 
"source\models\weapons\arms\v_arms_producer_new.mdl" 
"source\models\weapons\arms\v_arms_producer_new.vvd" 

"source\materials\vgui\dating.vtf"
"source\materials\vgui\touxiang.vtf"
"source\materials\vgui\daodi.vtf"

"source\materials\\(cdmaterials)\\*.\*"

1. "source\addonimage.jpg" 即vpk预览图片文件。
2. "source\materials\vgui\dating.vtf" 即人物的大厅头像。
3. "source\materials\vgui\touxiang.vtf" 即人物的游戏内头像。
4. "source\materials\vgui\daodi.vtf" 即人物的倒地图标。
5. (cdmaterials) 应为你在qc中设置的 $cdmaterials 的值，即模型的材质路径。
6. 你需要使用文本文件编辑工具修改批处理文件auto.bat，以创建及修改自定义功能，例如变更打包文件夹的名称前缀，这对识别不同mod是非常重要的。
### 材质文件 & vpk预览图片文件
脚本将对材质文件和vpk预览图片文件 "source\addonimage.jpg" 进行复制操作，统一粘贴到各个打包文件夹。
### 模型文件
脚本将对模型文件"\*.mdl"，"\*.vtx"以及"\*.vvd"进行分类复制操作，分别粘贴至对应的打包文件夹。
### vgui文件
脚本将对vgui文件中的大厅头像文件 "dating.vtf"，游戏内头像文件 "touxiang.vtf" 和倒地图标文件 "daodi.vtf"进行复制，统一粘贴到各个打包文件夹，并根据打包文件夹对应的角色进行改名。
### vpk描述文件
脚本将根据一定规则分别生成对应不同角色的vpk描述文件 "addoninfo.xxx.txt"，并将其分别复制粘贴到对应的打包文件夹内，最后改名为 "addoninfo.txt"。
### vpk封装
脚本将批量调用用户所提供的系统中的绝对路径所对应的vpk拆封程序，一般为名为 "vpk.exe"，每次调用将指定各个打包文件夹，最终在打包文件夹所在的目录下得到由vpk拆封程序生成的若干vpk文件。

:: 找到 SET vpk=E:\akua\mod\vqs\vpk.exe 这一文段，修改 vpk= 后方的文段以更改用户系统中vpk拆封程序的绝对路径。
## 规格化使用参考流程
1. 将crowbar生成的模型文件所在的外层文件夹 "models" 粘贴到 "source" 文件夹中；
2. 将模型的材质文件夹粘贴到 "source\materials" 文件夹中；
3. 将图标文件(*.vtf)都粘贴到 "source\materials\vgui" 文件夹中，并进行改名；
4. 将vpk预览图片文件 "addonimage.jpg" 粘贴到 "source" 文件夹中；
5. 编辑 "auto.bat" ，找到 SET head=[Survivor]Leviathan.DriftingSnow.School. 这一文段，修改 head= 后方的文段以更改打包文件夹前缀；
6. 修改 "source/Description.txt" 的内容，以更改vpk的内容描述；
7. 运行 "auto.bat" ，在 "output" 文件夹中得到vpk。

:: 你可以在后续的mod更新中，进行运行 "auto.bat" 之前的任意步骤，顺序不限。 

## 技术支持
Kokkorylien (bilibili UID: 2100612, Steam Friend Code: 251805531)
