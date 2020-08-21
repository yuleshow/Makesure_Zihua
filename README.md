# Makesure_Zihua
梅玺阁字话，又名《包学包会写繁体》
-----------------------------------

1. 源起
   大陸與臺灣，分別牽涉到三套字體（形），分別是簡體、繁體和正體，也分別有簡繁體、正簡體（不是簡正體）的對照表，然而繁體與正體的對照，始終沒有打通，目前有一表格、文章，是網友們自行整理的，不是很規範也不全，本計劃着眼於从兩岸「官方」文件中整合出一個快速檢閱查找的方法來。

2. 官方字表
2.1 中華民國教育部 4808 個常用字說明 民國71年（1982年）9月1日
中華民國教育部官方入口: https://language.moe.gov.tw/result.aspx?classify_sn=23&subclassify_sn=437&content_sn=46
https://language.moe.gov.tw/001/Upload/Files/site_content/download/mandr/%E6%95%99%E8%82%B2%E9%83%A84808%E5%80%8B%E5%B8%B8%E7%94%A8%E5%AD%97%E8%AA%AA%E6%98%8E.pdf
2.1.1 常用國字標準字體表（A表）
PDF檔
位置:           於References下
文件名:         官方_中國民國教育部4808個常用字.pdf
原下載網址:     https://language.moe.gov.tw/001/Upload/Files/site_content/download/mandr/%E6%95%99%E8%82%B2%E9%83%A84808%E5%80%8B%E5%B8%B8%E7%94%A8%E5%AD%97.pdf

ODS檔
位置:           於References下
文件名:         官方_中華民國教育部4808個常用字.ods
原下載網址:     https://language.moe.gov.tw/001/Upload/Files/site_content/download/mandr/%E6%95%99%E8%82%B2%E9%83%A84808%E5%80%8B%E5%B8%B8%E7%94%A8%E5%AD%97.ods

TXT檔，由上列ods檔另存為.csv而成，Field delimiter「:」，String delimiter為空
TXT/ORIGIN-A.csv

用perl/A-index-GEN.pl 生成 TXT/A-index.csv

中華民國標準字體查詢各字體入口（含A表、B表）:   https://language.moe.gov.tw/result.aspx?classify_sn=23&subclassify_sn=436&thirdclassify_sn=475&content_sn=8
相關維基文庫:   https://zh.m.wikisource.org/zh-hant/%E5%B8%B8%E7%94%A8%E5%9C%8B%E5%AD%97%E6%A8%99%E6%BA%96%E5%AD%97%E9%AB%94%E8%A1%A8

2.2 次常用國字標準字體表（B表）
中華民國標準字體查詢各字體入口（含A表、B表）:   https://language.moe.gov.tw/result.aspx?classify_sn=23&subclassify_sn=436&thirdclassify_sn=475&content_sn=8  (同2.1.1)
2.2.1 完整表格
      雖然有2.2提及的查詢入口，但至今沒有找到如2.1.1中那樣現成的官方PDF或電子表格，亦沒有找到象A表那樣官方的「教育部字號」
2.2.1.2 借用表格
借用網友表格，出處: https://sites.google.com/site/jzweon/list/chart-of-standard-forms-of-less-than-common-national-characters
直接取文字部分 copy/paste成 TXT/ORIGIN-B.txt
2.2.1.3 調整表格
perl/B_unicode.txt 表直接替換「空格」為「回車」，共6343行
perl/B_text.txt 用 perl/oneline-to-multilines-add-B-number.pl 調整為用B00000-B06343號的文件，導入新的ODS

ODS檔
位置:           於References下
文件名:         網絡_中華民國教育部6343個次常用字.ods

2.3 通用規範漢字表（G表） 2013年6月18日
中華人民共和國教育部官方入口
http://www.gov.cn/zwgk/2013-08/19/content_2469793.htm
2.3.1 精掃描文件
PDF檔
位置:           於References下
文件名:         官方_中華人民共和國_通用規範漢字表.pdf
原下載網址:     http://www.moe.gov.cn/publicfiles/business/htmlfiles/moe/cmsmedia/other/2013/7/other98742.zip

2.3.1 文字版
由於未找到文字版官方文件，採用維基文庫，手工調整成帶G1-00000, G2-00000, G3-00000的三級字庫

ODS檔
位置:           於References下
文件名:         維基_中華人民共和國8105個常用規範漢字.ods
原網址:         https://zh.m.wikisource.org/zh-hans/%E9%80%9A%E7%94%A8%E8%A7%84%E8%8C%83%E6%B1%89%E5%AD%97%E8%A1%A8

TXT檔
位置:           於References下
文件名:         G-index.txt

3. 簡繁正對照
3.1 中華民國教育部 標準字與簡化字對照手冊 2011年9月
https://ws.moe.edu.tw/001/Upload/userfiles/%E6%A8%99%E6%BA%96%E5%AD%97%E5%B0%8D%E7%85%A7%E7%B0%A1%E5%8C%96%E5%AD%97.pdf
說明：          这個對照表其實衹有A表即《常用字4808字》與正體與簡化字的對照
3.1.1 文件
PDF檔
位置:           於References下
文件名:         官方_中華民國教育部-標準字對照簡化字.pdf

ODS檔
此ODS檔由全文複製上列PDF檔後，取第6頁至第90頁內容，去掉空格後，再由emacs用replace-regexp替換而成，如下： 
Replace regexp (default 【[0-9]+ 畫】
 → ): 
Replace regexp (default [0-9]+ 畫～ [0-9]+ 畫
 → ):
Replace regexp (default - [0-9]+ -
 → ): 
Replace regexp (default 標準字對照簡化字表
 → ):
Replace regexp (default [0-9]+ 畫
 → ):
替換後，剩4810行，其中「鍾」「蘋」各佔二行

-----以上emacs手工，太慢，以下perl大法 -----
將PDF全文複製並保留「- 6 -」至「- 91 -」之間，共5097行，保存至perl/A_Zheng-Jian.txt
用perl/A_Zheng-Jian-GEN.pl直接生成TXT/A-ZJ.txt ，作為工作文件，此文件4808行，用「:」分隔為四列，分別為「原正體字」「大陸簡化字」「對應關係」「大陸繁體字」

用TXT/A-index.txt 和 TXT/A-ZJ.txt 與 perl/A-ZJ-index.pl 生成帶A00000編號的正簡繁體對應表 TXT/A-ZJ-index.txt，最終存為ODS

ODS檔（去掉「佔位」標誌，並添加首行）
位置:           於References下
文件:           整合_中華民國教育部-標準字對照簡化字.ods

3.2 中華人民共和國 常用規範漢字表 附件1. 规范字与繁体字、异体字对照表
參見2.3.1 用其附錄，
維基:     https://zh.m.wikisource.org/zh-hans/%E9%80%9A%E7%94%A8%E8%A7%84%E8%8C%83%E6%B1%89%E5%AD%97%E8%A1%A8
3.2.1 文件
將維基附錄1複製黏粘成 TXT/G-JF.txt 文件，从「规范字与繁体字、异体字对照表」始至「8100	𫚭	(鱲)	」
用 perl/G_Jian-Fan-Gen.pl 生成 TXT/G-JF-table.txt 文件，成為用「:」隔開昏戈四例，分別為「序號」「簡體字」「繁體字」「異體字」

ODS檔，直接用Libre打開 TXT/G-JF-table.txt 另存
位置:           於References下
文件:           整合_中華人民共和國8105個常用規範漢字-附錄1簡繁異表-3222字.ods

3.2.1.1 3222字單行長表生成
輸入文件:       G-JF-table.txt          3222行
輸出文件:       G-JF-table-long.txt     3121行
脚本：          perl/G-JF-table-long.pl

3.2.1.2 全索引G表生成
輸入文件:       G-index.txt G-JF-table-long.txt
輸出文件:       G-full-index.txt

ODS文檔
位置:           References
文件名:         整合_中華人民共和國8105個常用規範漢字-全簡繁異表-8105字.ods


-----------------------------------------------------------------
ORIGIN-A.csv    原始的从ods另存為的A表
A-index.csv     用ORIGIN-A.csv生成的A表
ORIGIN-B.txt    單行的6343個字的文本文件
B-index.csv     用ORIGIN-B.txt生成的B表

A-index-GEN.pl  Input file:     ORIGIN-A.csv
                Output file:    A-index.csv
B-index-GEN.pl  Input file:     ORIGIN-B.csv
                Output file:    B-index.csv

