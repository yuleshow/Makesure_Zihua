# Makesure_Zihua
梅玺阁字话，又名《包学包会写繁体》
-----------------------------------

<h2>1. 源起</h2>
大陸與臺灣，分別牽涉到三套字體（形），分別是簡體、繁體和正體，也分別有簡繁體、正簡體（不是簡正體）的對照表，然而繁體與正體的對照，始終沒有打通，目前有一表格、文章，是網友們自行整理的，不是很規範也不全，本計劃着眼於从兩岸「官方」文件中整合出一個快速檢閱查找的方法來。<br />

<h2>2. 官方字表</h2>
<h3>2.1 中華民國教育部 4808 個常用字說明 民國71年（1982年）9月1日</h3>
中華民國教育部官方入口: https://language.moe.gov.tw/result.aspx?classify_sn=23&subclassify_sn=437&content_sn=46 <br /><br />
https://language.moe.gov.tw/001/Upload/Files/site_content/download/mandr/%E6%95%99%E8%82%B2%E9%83%A84808%E5%80%8B%E5%B8%B8%E7%94%A8%E5%AD%97%E8%AA%AA%E6%98%8E.pdf<br />
<h4>2.1.1 常用國字標準字體表（A表）</h4>
PDF檔<br />
位置:           於References下<br />
文件名:         官方_中國民國教育部4808個常用字.pdf<br />
原下載網址:     https://language.moe.gov.tw/001/Upload/Files/site_content/download/mandr/%E6%95%99%E8%82%B2%E9%83%A84808%E5%80%8B%E5%B8%B8%E7%94%A8%E5%AD%97.pdf<br />
<br />
ODS檔<br />
位置:           於References下<br />
文件名:         官方_中華民國教育部4808個常用字.ods<br />
原下載網址:     https://language.moe.gov.tw/001/Upload/Files/site_content/download/mandr/%E6%95%99%E8%82%B2%E9%83%A84808%E5%80%8B%E5%B8%B8%E7%94%A8%E5%AD%97.ods<br />
<br />
TXT檔，由上列ods檔另存為.csv而成，Field delimiter「:」，String delimiter為空<br />
TXT/ORIGIN-A.csv<br />
<br />
用perl/A-index-GEN.pl 生成 TXT/A-index.csv<br />
<br />
中華民國標準字體查詢各字體入口（含A表、B表）:   https://language.moe.gov.tw/result.aspx?classify_sn=23&subclassify_sn=436&thirdclassify_sn=475&content_sn=8<br />
相關維基文庫:   https://zh.m.wikisource.org/zh-hant/%E5%B8%B8%E7%94%A8%E5%9C%8B%E5%AD%97%E6%A8%99%E6%BA%96%E5%AD%97%E9%AB%94%E8%A1%A8<br />
<br />
<h3>2.2 次常用國字標準字體表（B表）</h3>
中華民國標準字體查詢各字體入口（含A表、B表）:   https://language.moe.gov.tw/result.aspx?classify_sn=23&subclassify_sn=436&thirdclassify_sn=475&content_sn=8  (同2.1.1)<br />
<h4>2.2.1 完整表格</h4>
      雖然有2.2提及的查詢入口，但至今沒有找到如2.1.1中那樣現成的官方PDF或電子表格，亦沒有找到象A表那樣官方的「教育部字號」<br />
<h5>2.2.1.1 借用表格</h5>
借用網友表格，出處: https://sites.google.com/site/jzweon/list/chart-of-standard-forms-of-less-than-common-national-characters<br />
直接取文字部分 copy/paste成 TXT/ORIGIN-B.txt<br />
<h5>2.2.1.2 調整表格</h5>
將 TXT/ORIGIN-B.txt 用 perl/B-index-GEN.pl 調整為用B00000-B06343號的文件，導入新的ODS<br />
<br />
ODS檔<br />
位置:           於References下<br />
文件名:         網絡_中華民國教育部6343個次常用字.ods<br />
<br />
<h3>2.3 通用規範漢字表（G表） 2013年6月18日
中華人民共和國教育部官方入口<br />
http://www.gov.cn/zwgk/2013-08/19/content_2469793.htm<br />
<h4>2.3.1 精掃描文件</h4>
PDF檔<br />
位置:           於References下<br />
文件名:         官方_中華人民共和國_通用規範漢字表.pdf<br />
原下載網址:     http://www.moe.gov.cn/publicfiles/business/htmlfiles/moe/cmsmedia/other/2013/7/other98742.zip<br />
<br />
<h4>2.3.2 文字版</h4>
由於未找到文字版官方文件，採用維基文庫，copy/paste 三級字庫文字部分，存於ORIGIN-G，8105字共8175行，用perl/G-index-GEN.pl 整理<br />
<br />
ODS檔<br />
位置:           於References下<br />
文件名:         維基_中華人民共和國8105個常用規範漢字.ods<br />
原網址:         https://zh.m.wikisource.org/zh-hans/%E9%80%9A%E7%94%A8%E8%A7%84%E8%8C%83%E6%B1%89%E5%AD%97%E8%A1%A8<br />
<br />
TXT檔<br />
位置:           於TXT下<br />
文件名:         G-index.CSV<br />
<br />
<h2>3. 簡繁正對照</h2>
<h3>3.1 中華民國教育部 標準字與簡化字對照手冊 2011年9月</h3>
https://ws.moe.edu.tw/001/Upload/userfiles/%E6%A8%99%E6%BA%96%E5%AD%97%E5%B0%8D%E7%85%A7%E7%B0%A1%E5%8C%96%E5%AD%97.pdf<br />
說明：          这個對照表其實衹有A表即《常用字4808字》與正體與簡化字的對照，所以相關文件名均以A表處理<br />
<h4>3.1.1 文件</h4>
PDF檔<br />
位置:           於References下<br />
文件名:         官方_中華民國教育部-標準字對照簡化字.pdf<br />
<br />
ODS檔<br />
此ODS檔由全文複製上列PDF檔後，取第6頁至第90頁內容，去掉空格後，再由emacs用replace-regexp替換而成，如下： <br />
```Replace regexp (default 【[0-9]+ 畫】<br /> ```
 → ): <br />
Replace regexp (default [0-9]+ 畫～ [0-9]+ 畫<br />
 → ):<br />
Replace regexp (default - [0-9]+ -<br />
 → ): <br />
Replace regexp (default 標準字對照簡化字表<br />
 → ):<br />
Replace regexp (default [0-9]+ 畫<br />
 → ):<br />
替換後，剩4810行，其中「鍾」「蘋」各佔二行<br />// emacs_lisp ```
<br />
-----以上emacs手工，太慢，以下perl大法 -----<br />
將PDF全文複製並保留「- 6 -」至「- 91 -」之間，共5097行，保存至TXT/ORIGIN-A_ZJF.txt<br />
用perl/A_ZJF-GEN.pl直接生成TXT/A_ZJF-unindexed.csv ，作為工作文件，此文件4808行，用「:」分隔為四列，分別為「原正體字」「大陸簡化字」「對應關係」「大陸繁體字」；其中，調整三個字，
<br />
<br />
用TXT/A-index.csv 和 TXT/A_ZJF.txt 與 perl/A_ZJF-index.pl 生成帶A00000編號的正簡繁體對應表 TXT/A_ZJF-index.txt，最終存為ODS<br />
<br />
ODS檔（去掉「佔位」標誌，並添加首行）<br />
位置:           於References下<br />
文件:           整合_中華民國教育部-標準字對照簡化字.ods<br />
<br />
<h4>3.1.2 調整</h4>
A01266，在複製粘貼到ORIGIN-A_ZJF.txt中，「彞」字會自動變成「彝」字，因此强制改回來<br />
「轂」字簡體非「毂」字，「车」字上少了一横，用「♧」代替<br />
取消了「鍾锺鍾」「蘋（艹频）蘋」二行<br />
以上調整均在perl/A_ZJF-index.pl中用正則表達式調整<br />

<h3>3.2 中華民國 非常用字表 （B表）</h3>
<h4>3.2.1 B表對照表</h4>
沒有官方的正簡繁體對照表，網友做的也沒有<br />
<h4>3.2.2 做一份「假」的B表正簡繁對照表</h4>
格式參照A_ZJF-index.csv，共五例，為：編號、正體、簡體、繁體、簡體與正體的對應關係（一對一、一對多、一對未知，由於本表是「假表」，所於全部用「一對未知」）<br />
本假表用到一個中間文件，打開B-index.csv後，直接複製第二列正體字，粘貼到emacs（OpenCC插件，正確率一般）轉換成簡體，並存為TXT/B_J.csv，最終用B_JFY-index.pl 生成 B_JFY-index.csv<br />
由於不同方案的「簡繁轉換」結果不同，用https://www.chineseconverter.com/en/convert/simplified-to-traditional 又轉一遍，用第一次生成的 B_JFY-index.csv 再插入第二次轉成的簡體單獨成列，另存為B_JFY-two.csv，用B_compare.pl 生成比較文件B_JFY-two-diff.csv，人工比較選擇<br />
以上兩行作癈，最終還是選用了Libre Office內帶的繁簡轉換方案，稍稍靠譜點，電腦中文化幾十年，至今沒有好的簡繁轉換碼表，一岸衹顧叫着「自古以來」，另一岸也不知在幹點啥，官方碼表却連一萬個字都不到，哎！<br />
將生成的6343行單字文件，直接存為TXT/ORIGIN-B_J.csv<br />
<h3>3.3 中華人民共和國 常用規範漢字表 附件1. 规范字与繁体字、异体字对照表</h3>
<h4>3.3.1 用其附錄</h4>
參攷2.3<br />
維基:     https://zh.m.wikisource.org/zh-hans/%E9%80%9A%E7%94%A8%E8%A7%84%E8%8C%83%E6%B1%89%E5%AD%97%E8%A1%A8<br />
<h4>3.3.2 文件</h4>
將維基附錄1複製黏粘成 TXT/ORIGIN-G_JFY.txt 文件，从「规范字与繁体字、异体字对照表」始至「8100	𫚭	(鱲)	」<br />
用 perl/G_JFY-GEN.pl 生成 TXT/G-JFY-table.csv 文件，成為用「:」隔開成四例，分別為「序號」「簡體字」「繁體字」「異體字」<br />
<br />
ODS檔，直接用Libre打開 TXT/G-JFY-table.CSV 另存<br />
位置:           於References下<br />
文件:           整合_中華人民共和國8105個常用規範漢字-附錄1簡繁異表-3222字.ods<br />
<br />
<h5>3.3.1.1 3222字單行長表生成</h5>
輸入文件:       G-JFY-table.csv          3222行<br />
輸出文件:       G-JFY-long-table.csv     3121行<br />
脚本：          perl/G-JFY-long-GEN.pl<br />
<br />
<h5>3.3.1.2 全索引G表生成</h5>
輸入文件:       G-index.csv G_JFY-long-table.csv<br />
輸出文件:       G_JFY-full-index.txt<br />
<br />
ODS文檔<br />
位置:           References<br />
文件名:         整合_中華人民共和國8105個常用規範漢字-全簡繁異表-8105字.ods

<h3>3.4 AB合並表</h3>
<code>cat A_ZJF-index.csv B_ZJF-index.csv > AB_ZJF-index.csv</code>

<h2>4. 總索引表</h2>
這個以AB表中的簡化字對應G表的簡體字的總索引表
<h3>4.1 表格的準備</h3>
AB_ZJF-index.csv - AB正簡繁表，整合後的A表和（假）B表，共五列，分別為「編號」「正體」「簡體」「繁體」「簡體對繁體關系」<br />
G_JFY-full-index.csv - G簡繁異表，共五例（個別一對多延長單行），共四列，分別為「編號」「簡體」「繁體」「異體」<br />
<h3>4.2 表格的生成</h3>
最終用perl/AB-G_ZJFY-full-index.pl生成全索引ABG整合表AB-G_ZJFY-full-index.csv，表內附表頭<br />
<B>有趣的是，最後的總索引表，可以看出8105個大陸規範漢字，在臺灣的「常用」「次常用」表上衹出現了7541個字（其中還有一對多繁體重複的）</b><br />

<h2>5. 其它</h2>
<h3>5.1 缺字</h3>
A01266 「彞」在《官方_中華民國教育部-標準字對照簡化字》中沒有出現，但奇怪的是，這張表還是4808字，待查<br />
<B>上行解決，08/22/20</B> 見3.1.2<br />
<h3>5.2 編碼</h3>
G1-01360 維基G表的「珊」字是個特殊編碼字，且簡繁異符號不按標準（缺「[]」符號，掃描版正確），未知出錯原因，暫略<br />
<h3>5.2 改進</h3>
<h4>5.2.1 假B表</h4>
目前該表是假設所有的繁體與正體相同，下一步應該改進成該字正簡相同情况下，沒有繁體字<br /> 

-----------------------------------------------------------------


perl script  | Input files   | Output files      
------------ | ------------- | -------------
A-index-GEN.pl | ORIGIN-A.csv | A-index.csv
B-index-GEN.pl | ORIGIN-B.txt | B-index.csv
G-index-GEN.pl | ORIGIN-G.txt | G-index.csv
A_ZJF-GEN.pl   | ORIGIN-A_ZJF.txt | A_ZJF-unidexed.csv
A_ZJF-index.pl | A_ZJF-unidexed.csv<br />A-index.csv | A_ZJF-index.csv
B_ZJF-index.pl    | ORIGIN-B_J.csv<br />B-index.csv    | B_ZJF-index.csv
B_compaure.pl     | B_ZJ-two.csv    | B_ZJ-two-diff.csv
G_JFY-GEN.pl   | ORIGIN-G_JFY.txt | G_JFY-table.csv
G_JFY-long-GEN.pl | G_JFY-table.csv | G_JFY-long-table.csv
G_JFY-full-index.pl | G_JFY-long-table.csv<br />G-index.csv | G_JFY-full-index.csv
AB-G_ZJFY-full-index.pl | AB_ZJF-index.csv<br />G_JFY-full-index.csv | AB-G_ZJFY-full-index.csv


文件名                          |文件屬性      |內容
-------------------------------|---------------------------|---------------------------
ABG_ZJFY-final.csv              |                |本計劃的最終文件，包含了A表B表C表的所有文字    |
AB-G_ZJFY-full-index.csv        |中間文件        |最終生成的表，用AB表作索引，包含可對應G表部分的全表   |     
AB-G_ZJFY-full-extend-index.csv |中間文件        |取代上表的，增加了如果AB表正字對應不到G表，則用正體對應G表的繁體或異體       |
AB_ZJF-index.csv                |         |合並的AB表，含正簡繁，帶編碼
A-index.csv                     |         |用ORIGIN-A.csv生成的A表，帶編碼
A_ZJF-index.csv                 |         |A表的正簡繁對照表，不含編碼
A_ZJF-unidexed.csv              |中間文件         |A表的正簡繁對照表，含編碼
B-index.csv                     |         |用ORIGIN-B.txt生成的B表，帶編碼
B_ZJF-index.csv                 |         |一張（假）表，用自動繁簡轉換結果製成的B表正簡繁對照表
G-index.csv                     |         |用ORIGIN-G.txt生成的G表，帶編碼
G_JFY-full-index.csv            |         |G表8105字含繁體異體的帶編碼的表
G_JFY-long-table.csv            |         |有繁體異體字的部分G表，不含沒有繁體異體的部分，一對多以單行形式出現
G_JFY-table.csv                 |中間文件        |有繁體異體字的部分G表，不含沒有繁體異體的部分，一對多以重復多行形式出現
ORIGIN-A.csv                    |原始文件 |原始的从ods另存為的A表
ORIGIN-A_ZJF.txt                |原始文件 |複製自PDF的原文本，中華民國官方A表「正簡繁」對照表
ORIGIN-B_J.csv                  |原始文件 |每行單字共6343行的用B表生成的簡體列表
ORIGIN-B.txt                    |原始文件 |單行的6343個字的文本文件，B表
ORIGIN-G_JFY.txt                |原始文件 |維基文庫copy/paste的附錄簡繁異部分
ORIGIN-G.txt                    |原始文件 |維基文庫copy/paste三級字表的文本文件




csv, pl, txt 文件命名規則<br />
字母 | 含義
-----|--------
A       | A表，中華民國教育部常用國字標準字體表（4808字）
B       | B表，中華民國教育部次常用國字標準字體表（6343字）
G       | G表，中華人民共和國通用規範漢字表（8105字）
Z       | 正體，符合AB表的字
J       | 簡體，簡化字，符合G表的字，及符合A_ZJF表（《中華民國教育部 標準字與簡化字對照手冊》）的字
F       | 繁體，符合G表的字
Y       | 異體，符合G表的字
GEN     | 初始表格生成
index   | 帶編碼