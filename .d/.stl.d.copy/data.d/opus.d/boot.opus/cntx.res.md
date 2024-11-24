
<!-- [[__TOC_]] -->

<a name="top"></a>
<a class=top-link hide href="#top">↑</a>

<style type="text/css">
   .top-link {
    transition: all .25s ease-in-out;
    position: fixed;
    bottom: 0;
    right: 0;
    display: inline-flex;
    color: #000000;

    cursor: pointer;
    align-items: center;
    justify-content: center;
    margin: 0 2em 2em 0;
    border-radius: 50%;
    padding: .25em;
    width: 1em;
    height: 1em;
    background-color: #F8F8F8;
}

h1{
    color: rgb(155, 0, 218);
    font-weight: normal;
    font-style: italic;
    font-weight:bold;

}
h2{
    color: rgb(155, 40, 238);
    font-style: italic;
    font-weight:bold;
}
h3{
    color: rgb(155, 80, 218);
    font-style: italic;
    font-weight:bold;
}
h4{
    color: rgb(155, 120, 218);
    font-style: italic;
    font-weight:bold;
}
h5{
    color: rgb(155, 160, 218);
    font-style: italic;
    font-weight:bold;
}
h6 {
    color: rgb(155, 200, 230);
    font-style: italic;
    font-weight:bold;
}
</style>

Start Contents Menu

<!-- TOC toc2f_stl0 --> 
 - <a href=#b4a28c56059c4924bfcd1e9e64e09a90> STL in Linux</a>
   - <a href=#0dcf1f6503ae4d518e40d2130cf8e435> General </a>
     - <a href=#54dc1eeb054b4b19b646f03fecb7e36d> Flags</a>
       - <a href=#e42fb623a5e74cf4a76fa5a7a6ec4d1a> Global in dr: `~/`</a>
       - <a href=#2e0d9a0700774a60b8ef49f893a62800> Local in dr: `~/.stl.d/data.d/flag.d`</a>
     - <a href=#4cdf876a72184221b2663b6b529d16cc> Using data</a>
   - <a href=#5d1f2c0f03004183b95199e935fec953> Processes</a>
     - <a href=#3f15c71098bc4dfd8373c3dae678238c> Download</a>
     - <a href=#2c9ce9ccc1c34be7baa6bad9a242b01d> Boot</a>
       - <a href=#4e6fbfa82f3446c5b27b8227f3c13cbf> Up to memory - function</a>
       - <a href=#dad14376edb44f1ca9052b7813c8977e> Test </a>
     - <a href=#d252bf654e464c238ca4ff44f7f3f4fc> Delete </a>
     - <a href=#747b70ac833747c7ab509a10de9c6361> Common</a>
     - <a href=#c6cb3ea0fc1542b2b1ea6246ac3c17b7> Save ~/.stl.d</a>
   - <a href=#6bdb0c26f10f47eab3df926ea0559483> Files :: `~/.stl.d`</a>
     - <a href=#cd1f7b3b9d224b1caf6e5faf4f213788> Download </a>
     - <a href=#dec768afb8ec4541b12708838517da0b> Boot</a>
       - <a href=#3fa8180766514c47bc5fa8191ef3ce13> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#aee74f9971654441958eea5e12fd5353> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#418979b47c514ff2a9c3d4d1817f2e06> Delete</a>
     - <a href=#9c360b23a90741b087d8dc509c5d066b> Common</a>
       - <a href=#82ddcd87035b42969fb1d9de1c49f31c> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>
 - <a href=#a8aa69d5bb7b4c5782c9313f5903398a> Lexicon </a>
   - <a href=#b8e97d8e18f544b99c6d38b46340186e> From function extend - informaiton</a>
   - <a href=#55fd9e264d724d419386d14c659a00df> From content file or directory</a>
   - <a href=#7b4bd8cb28794ec39049e46bddda1471> Error name </a>
   - <a href=#8a572f28cc9043ca9ac3c986e412a5c6> Abbriviations</a>
     - <a href=#daa9fec5431d47e690032aba8c666e54> in value </a>
     - <a href=#bdd4edc9685442b68d89db2286963891> In Latin</a>
 - <a href=#11211a5acd2d401dbacf90f36bea1def> Data</a>
   - <a href=#5d25a562e93e4c57ae25549ce33ebb67> Flags</a>
     - <a href=#88f210ba88034b8c8550788dbbb1c2ad> Global in dr: `~/`</a>
     - <a href=#b55469d7b12e458c826ed38c76d64248> Local in dr: `~/.stl.d/data.d/flag.d`</a>
 - <a href=#4f672ee8d3064dba949b4b711594fb17> Structures</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732439465_24112024161105

DATX: 1732439465
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="b4a28c56059c4924bfcd1e9e64e09a90"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.general.d/001.txt.md)



 <a id="0dcf1f6503ae4d518e40d2130cf8e435"></a>
## General 


[001.txt.md](cntx.ins.d/002.general.d/003.flags.d/001.txt.md)



 <a id="54dc1eeb054b4b19b646f03fecb7e36d"></a>
### Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="e42fb623a5e74cf4a76fa5a7a6ec4d1a"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="2e0d9a0700774a60b8ef49f893a62800"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.txt.md](cntx.ins.d/002.general.d/003.use_data.d/001.txt.md)



 <a id="4cdf876a72184221b2663b6b529d16cc"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="5d1f2c0f03004183b95199e935fec953"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="3f15c71098bc4dfd8373c3dae678238c"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="2c9ce9ccc1c34be7baa6bad9a242b01d"></a>
### Boot


[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/002.up_to_mem.d/001.txt.md)



 <a id="4e6fbfa82f3446c5b27b8227f3c13cbf"></a>
#### Up to memory - function


[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/003.tst.d/001.txt.md)



 <a id="dad14376edb44f1ca9052b7813c8977e"></a>
#### Test 


[001.txt.md](cntx.ins.d/003.processes.d/004.dlt.d/001.txt.md)



 <a id="d252bf654e464c238ca4ff44f7f3f4fc"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/005.comm.d/001.txt.md)



 <a id="747b70ac833747c7ab509a10de9c6361"></a>
### Common


[001.txt.md](cntx.ins.d/003.processes.d/006.save.d/001.txt.md)



 <a id="c6cb3ea0fc1542b2b1ea6246ac3c17b7"></a>
### Save ~/.stl.d


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="6bdb0c26f10f47eab3df926ea0559483"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="cd1f7b3b9d224b1caf6e5faf4f213788"></a>
### Download 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="dec768afb8ec4541b12708838517da0b"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="3fa8180766514c47bc5fa8191ef3ce13"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="aee74f9971654441958eea5e12fd5353"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="418979b47c514ff2a9c3d4d1817f2e06"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="9c360b23a90741b087d8dc509c5d066b"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="82ddcd87035b42969fb1d9de1c49f31c"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 


[001.txt.md](cntx.ins.d/005.lexicon.d/001.txt.md)



 <a id="a8aa69d5bb7b4c5782c9313f5903398a"></a>
# Lexicon 


[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/001.txt.md)



 <a id="b8e97d8e18f544b99c6d38b46340186e"></a>
## From function extend - informaiton

- `.ln_src.` - src of `ln srs dist` 

- `.ln_dst.` - dist of `ln src dist` 

 <a id="55fd9e264d724d419386d14c659a00df"></a>
## From content file or directory

- `wnext`
  - `.lst` список
  - `.prc` файл с процедурой
  - `.cnt` контекст
  - `.env` окружение
  - `.hie` пояснение по смыслу - формат .md
  - `.tml` текстовый макет
  - `.man` общие пояснения - формат .md
  - `.tst` тестовый


  - `.ham` хук в обертках над git
  - `.mul` директория содержащая `wnext` директории 

  - `.sil` структура "лес"
  - `.arb` структура "дерево"
  - `.ram` структура "ветка"
  - `.fol` файл "лист"
  - `.grot` структура "дупло" - "кроличья нора"
  - `.repo` структура "коробка"
  
  - `.exa` пример
  - `.anc` файл с сылками



[001.txt.md](cntx.ins.d/005.lexicon.d/003.err_name.d/001.txt.md)



 <a id="7b4bd8cb28794ec39049e46bddda1471"></a>
## Error name 

    NOT_FILE
    IS_FILE
    NOT_DIR
    IS_DIR


[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/001.txt.md)



 <a id="8a572f28cc9043ca9ac3c986e412a5c6"></a>
## Abbriviations

    ins -> rcv - в случае вставки entety
    cnx -> res - в случае вставки текста в файл

    dr - dir
    fl - file
    et - entety - file|dir
    nm - name
    et_lk - entety ссылка в ее имени содержится способ ее обработки
    sdr - subdir
    pth - path
    rcv_dr - rcv dir
    ins_dr - ins dir
    prx - prefix
    ptx - postfix
    utl - служебный
    prx_et - prefix for entety (e.c. recommendationSTL for dr @|for fl &)
    ptx_fn - postfix фиксирует принадлежность служебных файлов сфрмированых работой fn
    lext - последнее расширение имени справа 
    2ext - предпоследнее последнее расширение имени справа
    cnx - context 
    res - результат вставки context

[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/002.in_value.d/001.txt.md)



 <a id="daa9fec5431d47e690032aba8c666e54"></a>
### in value 

    ins -> rcv - в случае вставки entety
    cnx -> res - в случае вставки текста в файл

    dr - dir
    fl - file
    et - entety - file|dir
    nm - name
    et_lk - entety ссылка в ее имени содержится способ ее обработки
    sdr - subdir
    pth - path
    rcv_dr - rcv dir
    ins_dr - ins dir
    prx - prefix
    ptx - postfix
    utl - служебный
    prx_et - prefix for entety (e.c. recommendationSTL for dr @|for fl &)
    ptx_fn - postfix фиксирует принадлежность служебных файлов сфрмированых работой fn
    lext - последнее расширение имени справа 
    2ext - предпоследнее последнее расширение имени справа
    cnx - context 
    res - результат вставки context

[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/003.in_latin.d/001.txt.md)



 <a id="bdd4edc9685442b68d89db2286963891"></a>
### In Latin

    sup                - избыточный
    (apn)appon         - прикреп
    (upn)unpin         - откреп
    (fis)finis         - цель
    fons               - источник
    succ               - успех
    defe               - провал
    conq               - набор
    (cre)creo          - создавть
    (tis)              - тест
    (tmp)tempus        - временный
    (vex)illum         - эталон
    (exa)mple          - пример
    (tml)template      - шаблон
    (agno)agnoscere    - классифицировать
    (noos)noosfere     - ноосфера
    (inge)ingenium     - знания
    (cogi)cogitatio    - мысли
    (enim)enim         - действительно
    (divi)divisio      - деление
    (sepa)separatio    - разделение
    (diff)differentia  - различие
    (defi)definitio    - определение
    (part)partitio     - классификация
    (tabu)tabulatum    - этаж
    (impl)implens      - наполнение
    (mxe)maxime        - важнейший
    (rcr)recreare      - пересобрать
    (obs)obsido        - вкладывать
    (quis)quis         - любой, каждый
    (ine)invenire      - отыскивать
    (ante)ante         - до, предварительно
    (ratis)ratis       - плот
    (quod)quod         - входящая очередь
    (fco)facio         - делать
    (nar)narratio      - рассказ
    (tdec)table de contenu - оглавление 
    (no)ta(m)          - тег
    (s)i(tu)           - окружение, среда
    [nen]t [ci]rcus    - цикл = вращение по кругу
    [f]o[rm]a          - составить, построить по алгоритму
                         - frm_... name fn thear bild for algor 
    [rete]             - сеть
    [f]u[rc]a          - развилка, по именам функций
                            - .frc
    [ab]u[m]brare        - набросок, сайт
                            - .abm

    [ob]e[x]           - запор, зарезервированные переменные и тд
                            - .obx

    [prim]us           - utils after unix
    [secu]ndo          - utils after prim, pst_unix
    [mall]er           - молоток, utils after secundo, pst_secu
    [raqu]el           - ракель, mini [mall]er, min_mall
    [ague]r            - шнек, utils after mall, pst_mall

    [higt]l            - высокий, системный (syll), system code function
    [shor]t            - низкий, подсистемный (syll), use code function

    [gig]no            - рождать, объемлющий элемент к существующему
                          - gig dir - порождающая директория
    [grad]us           - степень 
    [clie]ntela        - зависимость
                          - grad clie: prim secu mall raqu ague
    [syll]aba          - слог - код
                          - grad syll: higt shor

    [sal]             - соль, изменяемые файлы для неизменной обертки
                         - .sal
    [ax]on            - ось
                         - name_nod.ax.ext нередактируемый - только генерируемый
                            - name_nod.ext2.ext структура расширений

    [scae]na          - этап, градации развития взаимозамещающих качеств (используемый но неразвитый ... развитый но неиспользуемый)

    [veri]ficatur     - проверенный, прошлый но используемый, готовый к использованию всеми, продукт
    [prov]vectus      - опережающий, настоящий но неиспользуемый, измененный, тестируемый, в работе
    [absc]endentia    - перспектива, будущий но не будет использован, желаемый, обсуждаемый, идея

    scae_relevance__possibility_of_using: veri prov absc
    scae_complexity_stucture_syll__ease_of_use: prim secu mall raqu ague

    [camp]us          - поле, набор разных относящихся к одному

    camp_type_tst: fs_compare exec_compare

    [nid]us             - гнездо, api wrapper
    [cir]cus            - inner env
    [oll]am             - горшок, contaner for name main.sh -> main.d.oll

    [p]ro[to]        - прототип чего либо

    [tun]ica         - туника обертка

    {mnr}            - minor
        mnr_abstr        - понижение абстракции
    {mjr}            - major
        mjr_abstr        - повышение абстракции
    {sub}            - 
    {sup}            - 

    [el]ige          - выбрать 
                         - el_ выборка по чему либо : el_f_ 

    [c]a[p]e[l]la    - капелла
                         - .cpl файлы сборки с {replacer}

    [nob]            - для новичков

    CRUD+
    
    [pull]           - to local
    [push]           - from local

    [bull]           - to host deploy
    [bush]           - from host 

    [mdul] medulla      - [движок] мозг

    [obc] obiectum      - [аргументы] объект
    [sub] subiectum     - [процедура] субъект
    [aer] aer           - [окружение] воздух
    [ppr] productum     - [глобальная ссылка на результат] продукт

    [sag] sagitta       - [набор файлов] стрела

    [fol] folio folium  - [набор .fol] фолиант лист   
    [hum] humus         - [место роста] почва
    [lux] lux           - [выявление - sh, local dinamic lst, etset. ] 
    [grot] grotto       - [inner dir] грот

    [coll]colloquium    - разговор
    [pett]petitum       - [запрос] просьба
    [rfl]reflexum       - [ответ] рефлекс

    [mitt] mitto        - [вставить] бросать 
    [nit] nito          - [тест] экзамен
    [arn] arena         - [песочница] песок
    [sgm] segmentum     - [образец] сегмент
    [bale] bale         - [сет] тюк
    [soff] sofferre     - [пробовать] мучиться
    [opi] opibus        - [git] ресурсы
    [nm] nomenclatura   - [меню] список
    [ham] hamo          - [хук для opi] крюк 
    [ord] ordine        - [хук в функции] приказ
    [cap] capere        - [поднять в память] получить
    [sit] situ          - [стейт] состояние
    [apr] a priori      - [стартовый] исходный
    [mrc] miraculum     - [образец для подражания] чудо
    [eus] eusimod       - [экранирование] проедставление
    [rgx] regex         - regex
    [ptr] pointer       - [имя] указатель идентификатор
    [elg] elige         - [выбрать] 
    [scr] secare        - [вырезать]
    [scl] scala         - [двусторонняя связь - загрузка выгрузка - занесли вынесли - bcp dpl] лестница 
    [stu] studere       - [учебный] обучаться
    [pau] promptus ad usum - готов к использованию
    [oss] ossa          - [проект] остов 

    [duet] duetto       - [sync] дуэтом
    [coro] coro         - [root] в одиночку

    [diss] dissento     - [разногласие] различие
    [flur] fluor        - [обработка потока] поток
    [flos] flos         - [директория на .ram] цветок 
    [smp] simplex       - [необязательный - like tmp временный] простой
    [foe] foedus        - [синоним git] гадкий
    [iac] iacta         - [создать с удалернием старого] бросить

    [exi] eximo         - [выбрать] вынуть


[001.L1.txt.md](cntx.ins.d/006.data.d/001.L1.txt.md)



 <a id="11211a5acd2d401dbacf90f36bea1def"></a>
# Data


[001.txt.md](cntx.ins.d/006.data.d/002.flags.d/001.txt.md)



 <a id="5d25a562e93e4c57ae25549ce33ebb67"></a>
## Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="88f210ba88034b8c8550788dbbb1c2ad"></a>
### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="b55469d7b12e458c826ed38c76d64248"></a>
### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.L1.txt.md](cntx.ins.d/007.structures.d/001.L1.txt.md)



 <a id="4f672ee8d3064dba949b4b711594fb17"></a>
# Structures





