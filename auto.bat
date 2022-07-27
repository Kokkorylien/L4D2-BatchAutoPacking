::output变量的值以更改输出目录，不允许为空，非盘符开头以选择相对路径
SET output=output

::（不要修改）mdl所在相对路径
SET path3=models\survivors
SET path1=models\weapons\arms

::打包文件夹的前缀
::SET head=""
::取消上方文段的注释符号::并删除下方文段以取消应用带前缀命名规则，但不建议这么做
SET head=[Survivor]Leviathan.DriftingSnow.School.

::addoninfo中的版本号和作者名称
::更改source\Description.txt中的内容以更改vpk的描述
SET verson=1.0
SET author=Kokkorylien

::模型的材质相对路径
::SET cdmaterials=%author%\Leviathan.School
::上方文段为带作者名称的材质相对路径示例
SET cdmaterials=Leviathan.School

::vpk.exe的绝对路径
SET vpk=E:\akua\mod\vqs\vpk.exe

::创建分包文件夹的各个最低子级文件夹
::在这之前先清除原有的已输出内容
del /s /q /f "%output%\%head%bill"
del /s /q /f "%output%\%head%zoey"
del /s /q /f "%output%\%head%francis"
del /s /q /f "%output%\%head%louis"
del /s /q /f "%output%\%head%coach"
del /s /q /f "%output%\%head%nick"
del /s /q /f "%output%\%head%ellis"
del /s /q /f "%output%\%head%rochelle"

::材质相对路径
md "%output%\%head%bill\materials\%cdmaterials%"
md "%output%\%head%zoey\materials\%cdmaterials%"
md "%output%\%head%francis\materials\%cdmaterials%"
md "%output%\%head%louis\materials\%cdmaterials%"
md "%output%\%head%coach\materials\%cdmaterials%"
md "%output%\%head%nick\materials\%cdmaterials%"
md "%output%\%head%ellis\materials\%cdmaterials%"
md "%output%\%head%rochelle\materials\%cdmaterials%"

::图标相对路径
md "%output%\%head%bill\materials\vgui"
md "%output%\%head%zoey\materials\vgui"
md "%output%\%head%francis\materials\vgui"
md "%output%\%head%louis\materials\vgui"
md "%output%\%head%coach\materials\vgui"
md "%output%\%head%nick\materials\vgui"
md "%output%\%head%ellis\materials\vgui"
md "%output%\%head%rochelle\materials\vgui"

::第三人称模型mdl相对路径
md "%output%\%head%bill\%path3%"
md "%output%\%head%bill\%path3%\namvet"
md "%output%\%head%zoey\%path3%"
md "%output%\%head%francis\%path3%"
md "%output%\%head%louis\%path3%"
md "%output%\%head%coach\%path3%"
md "%output%\%head%nick\%path3%"
md "%output%\%head%ellis\%path3%"
md "%output%\%head%rochelle\%path3%"

::第一人称手臂mdl相对路径
md "%output%\%head%bill\%path1%"
md "%output%\%head%zoey\%path1%"
md "%output%\%head%francis\%path1%"
md "%output%\%head%louis\%path1%"
md "%output%\%head%coach\%path1%"
md "%output%\%head%nick\%path1%"
md "%output%\%head%ellis\%path1%"
md "%output%\%head%rochelle\%path1%"

::mdl处理
::复制并覆盖文件 第三人称模型mdl
copy "source\%path3%\survivor_NamVet.dx90.vtx" "%output%\%head%bill\%path3%"
copy "source\%path3%\survivor_namvet.mdl" "%output%\%head%bill\%path3%"
copy "source\%path3%\survivor_namvet.vvd" "%output%\%head%bill\%path3%"

copy "source\%path3%\namvet" "%output%\%head%bill\%path3%\namvet"

copy "source\%path3%\survivor_teenangst.dx90.vtx" "%output%\%head%zoey\%path3%"
copy "source\%path3%\survivor_teenangst.mdl" "%output%\%head%zoey\%path3%"
copy "source\%path3%\survivor_teenangst.vvd" "%output%\%head%zoey\%path3%"

copy "source\%path3%\survivor_teenangst_light.dx90.vtx" "%output%\%head%zoey\%path3%"
copy "source\%path3%\survivor_teenangst_light.mdl" "%output%\%head%zoey\%path3%"
copy "source\%path3%\survivor_teenangst_light.vvd" "%output%\%head%zoey\%path3%"

copy "source\%path3%\survivor_biker.dx90.vtx" "%output%\%head%francis\%path3%"
copy "source\%path3%\survivor_biker.mdl" "%output%\%head%francis\%path3%"
copy "source\%path3%\survivor_biker.vvd" "%output%\%head%francis\%path3%"

copy "source\%path3%\survivor_biker_light.dx90.vtx" "%output%\%head%francis\%path3%"
copy "source\%path3%\survivor_biker_light.mdl" "%output%\%head%francis\%path3%"
copy "source\%path3%\survivor_biker_light.vvd" "%output%\%head%francis\%path3%"

copy "source\%path3%\survivor_Manager.dx90.vtx" "%output%\%head%louis\%path3%"
copy "source\%path3%\survivor_manager.mdl" "%output%\%head%louis\%path3%"
copy "source\%path3%\survivor_manager.vvd" "%output%\%head%louis\%path3%"

copy "source\%path3%\survivor_Coach.dx90.vtx" "%output%\%head%coach\%path3%"
copy "source\%path3%\survivor_coach.mdl" "%output%\%head%coach\%path3%"
copy "source\%path3%\survivor_coach.vvd" "%output%\%head%coach\%path3%"

copy "source\%path3%\survivor_gambler.dx90.vtx" "%output%\%head%nick\%path3%"
copy "source\%path3%\survivor_gambler.mdl" "%output%\%head%nick\%path3%"
copy "source\%path3%\survivor_gambler.vvd" "%output%\%head%nick\%path3%"

copy "source\%path3%\survivor_mechanic.dx90.vtx" "%output%\%head%ellis\%path3%"
copy "source\%path3%\survivor_mechanic.mdl" "%output%\%head%ellis\%path3%"
copy "source\%path3%\survivor_mechanic.vvd" "%output%\%head%ellis\%path3%"

copy "source\%path3%\survivor_producer.dx90.vtx" "%output%\%head%rochelle\%path3%"
copy "source\%path3%\survivor_producer.mdl" "%output%\%head%rochelle\%path3%"
copy "source\%path3%\survivor_producer.vvd" "%output%\%head%rochelle\%path3%"

::复制并覆盖文件 第一人称手臂mdl
copy "source\%path1%\v_arms_bill.dx90.vtx" "%output%\%head%bill\%path1%"
copy "source\%path1%\v_arms_bill.mdl" "%output%\%head%bill\%path1%"
copy "source\%path1%\v_arms_bill.vvd" "%output%\%head%bill\%path1%"

copy "source\%path1%\v_arms_zoey.dx90.vtx" "%output%\%head%zoey\%path1%"
copy "source\%path1%\v_arms_zoey.mdl" "%output%\%head%zoey\%path1%"
copy "source\%path1%\v_arms_zoey.vvd" "%output%\%head%zoey\%path1%"

copy "source\%path1%\v_arms_francis.dx90.vtx" "%output%\%head%francis\%path1%"
copy "source\%path1%\v_arms_francis.mdl" "%output%\%head%francis\%path1%"
copy "source\%path1%\v_arms_francis.vvd" "%output%\%head%francis\%path1%"

copy "source\%path1%\v_arms_louis.dx90.vtx" "%output%\%head%louis\%path1%"
copy "source\%path1%\v_arms_louis.mdl" "%output%\%head%louis\%path1%"
copy "source\%path1%\v_arms_louis.vvd" "%output%\%head%louis\%path1%"

copy "source\%path1%\v_arms_coach_new.dx90.vtx" "%output%\%head%coach\%path1%"
copy "source\%path1%\v_arms_coach_new.mdl" "%output%\%head%coach\%path1%"
copy "source\%path1%\v_arms_coach_new.vvd" "%output%\%head%coach\%path1%"

copy "source\%path1%\v_arms_gambler_new.dx90.vtx" "%output%\%head%nick\%path1%"
copy "source\%path1%\v_arms_gambler_new.mdl" "%output%\%head%nick\%path1%"
copy "source\%path1%\v_arms_gambler_new.vvd" "%output%\%head%nick\%path1%"

copy "source\%path1%\v_arms_mechanic_new.dx90.vtx" "%output%\%head%ellis\%path1%"
copy "source\%path1%\v_arms_mechanic_new.mdl" "%output%\%head%ellis\%path1%"
copy "source\%path1%\v_arms_mechanic_new.vvd" "%output%\%head%ellis\%path1%"

copy "source\%path1%\v_arms_producer_new.dx90.vtx" "%output%\%head%rochelle\%path1%"
copy "source\%path1%\v_arms_producer_new.mdl" "%output%\%head%rochelle\%path1%"
copy "source\%path1%\v_arms_producer_new.vvd" "%output%\%head%rochelle\%path1%"

::材质处理：批量复制
copy "source\materials\%cdmaterials%" "%output%\%head%zoey\materials\%cdmaterials%"
copy "source\materials\%cdmaterials%" "%output%\%head%louis\materials\%cdmaterials%"
copy "source\materials\%cdmaterials%" "%output%\%head%francis\materials\%cdmaterials%"
copy "source\materials\%cdmaterials%" "%output%\%head%bill\materials\%cdmaterials%"
copy "source\materials\%cdmaterials%" "%output%\%head%nick\materials\%cdmaterials%"
copy "source\materials\%cdmaterials%" "%output%\%head%rochelle\materials\%cdmaterials%"
copy "source\materials\%cdmaterials%" "%output%\%head%ellis\materials\%cdmaterials%"
copy "source\materials\%cdmaterials%" "%output%\%head%coach\materials\%cdmaterials%"

::vgui处理：批量改名并分配
copy "source\materials\vgui\dating.vtf" "%output%\%head%bill\materials\vgui"
copy "source\materials\vgui\touxiang.vtf" "%output%\%head%bill\materials\vgui"
copy "source\materials\vgui\daodi.vtf" "%output%\%head%bill\materials\vgui"

copy "source\materials\vgui\dating.vtf" "%output%\%head%zoey\materials\vgui"
copy "source\materials\vgui\touxiang.vtf" "%output%\%head%zoey\materials\vgui"
copy "source\materials\vgui\daodi.vtf" "%output%\%head%zoey\materials\vgui"

copy "source\materials\vgui\dating.vtf" "%output%\%head%francis\materials\vgui"
copy "source\materials\vgui\touxiang.vtf" "%output%\%head%francis\materials\vgui"
copy "source\materials\vgui\daodi.vtf" "%output%\%head%francis\materials\vgui"

copy "source\materials\vgui\dating.vtf" "%output%\%head%louis\materials\vgui"
copy "source\materials\vgui\touxiang.vtf" "%output%\%head%louis\materials\vgui"
copy "source\materials\vgui\daodi.vtf" "%output%\%head%louis\materials\vgui"

copy "source\materials\vgui\dating.vtf" "%output%\%head%coach\materials\vgui"
copy "source\materials\vgui\touxiang.vtf" "%output%\%head%coach\materials\vgui"
copy "source\materials\vgui\daodi.vtf" "%output%\%head%coach\materials\vgui"

copy "source\materials\vgui\dating.vtf" "%output%\%head%nick\materials\vgui"
copy "source\materials\vgui\touxiang.vtf" "%output%\%head%nick\materials\vgui"
copy "source\materials\vgui\daodi.vtf" "%output%\%head%nick\materials\vgui"

copy "source\materials\vgui\dating.vtf" "%output%\%head%ellis\materials\vgui"
copy "source\materials\vgui\touxiang.vtf" "%output%\%head%ellis\materials\vgui"
copy "source\materials\vgui\daodi.vtf" "%output%\%head%ellis\materials\vgui"

copy "source\materials\vgui\dating.vtf" "%output%\%head%rochelle\materials\vgui"
copy "source\materials\vgui\touxiang.vtf" "%output%\%head%rochelle\materials\vgui"
copy "source\materials\vgui\daodi.vtf" "%output%\%head%rochelle\materials\vgui"

ren "%output%\%head%rochelle\materials\vgui\dating.vtf" "s_panel_lobby_producer.vtf"
ren "%output%\%head%rochelle\materials\vgui\touxiang.vtf" "s_panel_producer.vtf"
ren "%output%\%head%rochelle\materials\vgui\daodi.vtf" "s_panel_producer_incap.vtf"

ren "%output%\%head%nick\materials\vgui\dating.vtf" "s_panel_lobby_gambler.vtf"
ren "%output%\%head%nick\materials\vgui\touxiang.vtf" "s_panel_gambler.vtf"
ren "%output%\%head%nick\materials\vgui\daodi.vtf" "s_panel_gambler_incap.vtf"

ren "%output%\%head%ellis\materials\vgui\dating.vtf" "s_panel_lobby_mechanic.vtf"
ren "%output%\%head%ellis\materials\vgui\touxiang.vtf" "s_panel_mechanic.vtf"
ren "%output%\%head%ellis\materials\vgui\daodi.vtf" "s_panel_mechanic_incap.vtf"

ren "%output%\%head%coach\materials\vgui\dating.vtf" "s_panel_lobby_coach.vtf"
ren "%output%\%head%coach\materials\vgui\touxiang.vtf" "s_panel_coach.vtf"
ren "%output%\%head%coach\materials\vgui\daodi.vtf" "s_panel_coach_incap.vtf"

ren "%output%\%head%louis\materials\vgui\dating.vtf" "select_louis.vtf"
ren "%output%\%head%louis\materials\vgui\touxiang.vtf" "s_panel_manager.vtf"
ren "%output%\%head%louis\materials\vgui\daodi.vtf" "s_panel_manager_incap.vtf"

ren "%output%\%head%francis\materials\vgui\dating.vtf" "select_francis.vtf"
ren "%output%\%head%francis\materials\vgui\touxiang.vtf" "s_panel_biker.vtf"
ren "%output%\%head%francis\materials\vgui\daodi.vtf" "s_panel_biker_incap.vtf"

ren "%output%\%head%zoey\materials\vgui\dating.vtf" "select_zoey.vtf"
ren "%output%\%head%zoey\materials\vgui\touxiang.vtf" "s_panel_teenangst.vtf"
ren "%output%\%head%zoey\materials\vgui\daodi.vtf" "s_panel_teenangst_incap.vtf"

ren "%output%\%head%bill\materials\vgui\dating.vtf" "select_bill.vtf"
ren "%output%\%head%bill\materials\vgui\touxiang.vtf" "s_panel_namvet.vtf"
ren "%output%\%head%bill\materials\vgui\daodi.vtf" "s_panel_namvet_incap.vtf"

::addonimage.jpg处理：批量复制
copy "source\addonimage.jpg" "%output%\%head%zoey"
copy "source\addonimage.jpg" "%output%\%head%louis"
copy "source\addonimage.jpg" "%output%\%head%francis"
copy "source\addonimage.jpg" "%output%\%head%bill"
copy "source\addonimage.jpg" "%output%\%head%nick"
copy "source\addonimage.jpg" "%output%\%head%rochelle"
copy "source\addonimage.jpg" "%output%\%head%ellis"
copy "source\addonimage.jpg" "%output%\%head%coach"

::addoninfo.txt处理：批量生成并分配
::zoey
del "source\addoninfo.zoey.txt"
echo "AddonInfo">>source\addoninfo.zoey.txt
echo {>>source\addoninfo.zoey.txt
echo addontitle "%head%Zoey">>source\addoninfo.zoey.txt
echo addonversion "%verson%">>source\addoninfo.zoey.txt
echo addonauthor "%author%">>source\addoninfo.zoey.txt
echo addonauthorSteamID "%author%">>source\addoninfo.zoey.txt
echo addonURL0 "">>source\addoninfo.zoey.txt
echo addonDescription>>source\addoninfo.zoey.txt
echo ^">>source\addoninfo.zoey.txt
type source\Description.txt>>source\addoninfo.zoey.txt
echo.>>source\addoninfo.zoey.txt
::echo Replaces Zoey.>>source\addoninfo.zoey.txt
echo Replaces Zoey including light model.>>source\addoninfo.zoey.txt
echo ^">>source\addoninfo.zoey.txt
echo addonContent_Skin "1">>source\addoninfo.zoey.txt
echo addonContent_Survivor "1">>source\addoninfo.zoey.txt
echo }>>source\addoninfo.zoey.txt

::louis
del "source\addoninfo.louis.txt"
echo "AddonInfo">>source\addoninfo.louis.txt
echo {>>source\addoninfo.louis.txt
echo addontitle "%head%Louis">>source\addoninfo.louis.txt
echo addonversion "%verson%">>source\addoninfo.louis.txt
echo addonauthor "%author%">>source\addoninfo.louis.txt
echo addonauthorSteamID "%author%">>source\addoninfo.louis.txt
echo addonURL0 "">>source\addoninfo.louis.txt
echo addonDescription>>source\addoninfo.louis.txt
echo ^">>source\addoninfo.louis.txt
type source\Description.txt>>source\addoninfo.louis.txt
echo.>>source\addoninfo.louis.txt
echo Replaces Louis.>>source\addoninfo.louis.txt
echo ^">>source\addoninfo.louis.txt
echo addonContent_Skin "1">>source\addoninfo.louis.txt
echo addonContent_Survivor "1">>source\addoninfo.louis.txt
echo }>>source\addoninfo.louis.txt

::francis
del "source\addoninfo.francis.txt"
echo "AddonInfo">>source\addoninfo.francis.txt
echo {>>source\addoninfo.francis.txt
echo addontitle "%head%Francis">>source\addoninfo.francis.txt
echo addonversion "%verson%">>source\addoninfo.francis.txt
echo addonauthor "%author%">>source\addoninfo.francis.txt
echo addonauthorSteamID "%author%">>source\addoninfo.francis.txt
echo addonURL0 "">>source\addoninfo.francis.txt
echo addonDescription>>source\addoninfo.francis.txt
echo ^">>source\addoninfo.francis.txt
type source\Description.txt>>source\addoninfo.francis.txt
echo.>>source\addoninfo.francis.txt
::echo Replaces Francis.>>source\addoninfo.francis.txt
echo Replaces Francis including light model.>>source\addoninfo.francis.txt
echo ^">>source\addoninfo.francis.txt
echo addonContent_Skin "1">>source\addoninfo.francis.txt
echo addonContent_Survivor "1">>source\addoninfo.francis.txt
echo }>>source\addoninfo.francis.txt

::bill
del "source\addoninfo.bill.txt"
echo "AddonInfo">>source\addoninfo.bill.txt
echo {>>source\addoninfo.bill.txt
echo addontitle "%head%Bill">>source\addoninfo.bill.txt
echo addonversion "%verson%">>source\addoninfo.bill.txt
echo addonauthor "%author%">>source\addoninfo.bill.txt
echo addonauthorSteamID "%author%">>source\addoninfo.bill.txt
echo addonURL0 "">>source\addoninfo.bill.txt
echo addonDescription>>source\addoninfo.bill.txt
echo ^">>source\addoninfo.bill.txt
type source\Description.txt>>source\addoninfo.bill.txt
echo.>>source\addoninfo.bill.txt
::echo Replaces Bill.>>source\addoninfo.bill.txt
echo Replaces Bill including body model.>>source\addoninfo.bill.txt
echo ^">>source\addoninfo.bill.txt
echo addonContent_Skin "1">>source\addoninfo.bill.txt
echo addonContent_Survivor "1">>source\addoninfo.bill.txt
echo }>>source\addoninfo.bill.txt

::nick
del "source\addoninfo.nick.txt"
echo "AddonInfo">>source\addoninfo.nick.txt
echo {>>source\addoninfo.nick.txt
echo addontitle "%head%Nick">>source\addoninfo.nick.txt
echo addonversion "%verson%">>source\addoninfo.nick.txt
echo addonauthor "%author%">>source\addoninfo.nick.txt
echo addonauthorSteamID "%author%">>source\addoninfo.nick.txt
echo addonURL0 "">>source\addoninfo.nick.txt
echo addonDescription>>source\addoninfo.nick.txt
echo ^">>source\addoninfo.nick.txt
type source\Description.txt>>source\addoninfo.nick.txt
echo.>>source\addoninfo.nick.txt
echo Replaces Nick.>>source\addoninfo.nick.txt
echo ^">>source\addoninfo.nick.txt
echo addonContent_Skin "1">>source\addoninfo.nick.txt
echo addonContent_Survivor "1">>source\addoninfo.nick.txt
echo }>>source\addoninfo.nick.txt

::rochelle
del "source\addoninfo.rochelle.txt"
echo "AddonInfo">>source\addoninfo.rochelle.txt
echo {>>source\addoninfo.rochelle.txt
echo addontitle "%head%Rochelle">>source\addoninfo.rochelle.txt
echo addonversion "%verson%">>source\addoninfo.rochelle.txt
echo addonauthor "%author%">>source\addoninfo.rochelle.txt
echo addonauthorSteamID "%author%">>source\addoninfo.rochelle.txt
echo addonURL0 "">>source\addoninfo.rochelle.txt
echo addonDescription>>source\addoninfo.rochelle.txt
echo ^">>source\addoninfo.rochelle.txt
type source\Description.txt>>source\addoninfo.rochelle.txt
echo.>>source\addoninfo.rochelle.txt
echo Replaces Rochelle.>>source\addoninfo.rochelle.txt
echo ^">>source\addoninfo.rochelle.txt
echo addonContent_Skin "1">>source\addoninfo.rochelle.txt
echo addonContent_Survivor "1">>source\addoninfo.rochelle.txt
echo }>>source\addoninfo.rochelle.txt

::coach
del "source\addoninfo.coach.txt"
echo "AddonInfo">>source\addoninfo.coach.txt
echo {>>source\addoninfo.coach.txt
echo addontitle "%head%Coach">>source\addoninfo.coach.txt
echo addonversion "%verson%">>source\addoninfo.coach.txt
echo addonauthor "%author%">>source\addoninfo.coach.txt
echo addonauthorSteamID "%author%">>source\addoninfo.coach.txt
echo addonURL0 "">>source\addoninfo.coach.txt
echo addonDescription>>source\addoninfo.coach.txt
echo ^">>source\addoninfo.coach.txt
type source\Description.txt>>source\addoninfo.coach.txt
echo.>>source\addoninfo.coach.txt
echo Replaces Coach.>>source\addoninfo.coach.txt
echo ^">>source\addoninfo.coach.txt
echo addonContent_Skin "1">>source\addoninfo.coach.txt
echo addonContent_Survivor "1">>source\addoninfo.coach.txt
echo }>>source\addoninfo.coach.txt

::ellis
del "source\addoninfo.ellis.txt"
echo "AddonInfo">>source\addoninfo.ellis.txt
echo {>>source\addoninfo.ellis.txt
echo addontitle "%head%Ellis">>source\addoninfo.ellis.txt
echo addonversion "%verson%">>source\addoninfo.ellis.txt
echo addonauthor "%author%">>source\addoninfo.ellis.txt
echo addonauthorSteamID "%author%">>source\addoninfo.ellis.txt
echo addonURL0 "">>source\addoninfo.ellis.txt
echo addonDescription>>source\addoninfo.ellis.txt
echo ^">>source\addoninfo.ellis.txt
type source\Description.txt>>source\addoninfo.ellis.txt
echo.>>source\addoninfo.ellis.txt
echo Replace Ellis.>>source\addoninfo.ellis.txt
echo ^">>source\addoninfo.ellis.txt
echo addonContent_Skin "1">>source\addoninfo.ellis.txt
echo addonContent_Survivor "1">>source\addoninfo.ellis.txt
echo }>>source\addoninfo.ellis.txt

::源文件复制到打包文件夹
copy "source\addoninfo.zoey.txt" "%output%\%head%zoey"
copy "source\addoninfo.louis.txt" "%output%\%head%louis"
copy "source\addoninfo.francis.txt" "%output%\%head%francis"
copy "source\addoninfo.bill.txt" "%output%\%head%bill"
copy "source\addoninfo.nick.txt" "%output%\%head%nick"
copy "source\addoninfo.rochelle.txt" "%output%\%head%rochelle"
copy "source\addoninfo.ellis.txt" "%output%\%head%ellis"
copy "source\addoninfo.coach.txt" "%output%\%head%coach"

::重命名为addoninfo.txt
ren "%output%\%head%zoey\addoninfo.zoey.txt" "addoninfo.txt"
ren "%output%\%head%louis\addoninfo.louis.txt" "addoninfo.txt"
ren "%output%\%head%francis\addoninfo.francis.txt" "addoninfo.txt"
ren "%output%\%head%bill\addoninfo.bill.txt" "addoninfo.txt"
ren "%output%\%head%nick\addoninfo.nick.txt" "addoninfo.txt"
ren "%output%\%head%rochelle\addoninfo.rochelle.txt" "addoninfo.txt"
ren "%output%\%head%ellis\addoninfo.ellis.txt" "addoninfo.txt"
ren "%output%\%head%coach\addoninfo.coach.txt" "addoninfo.txt"

::封装为vpk
start "" "%vpk%" "%output%\%head%bill"
start "" "%vpk%" "%output%\%head%zoey"
start "" "%vpk%" "%output%\%head%francis"
start "" "%vpk%" "%output%\%head%louis"
start "" "%vpk%" "%output%\%head%coach"
start "" "%vpk%" "%output%\%head%nick"
start "" "%vpk%" "%output%\%head%ellis"
start "" "%vpk%" "%output%\%head%rochelle"

pause
