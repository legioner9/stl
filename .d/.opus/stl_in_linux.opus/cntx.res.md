
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
 - <a href=#d9ad33f2d1e448059a3a52d7321ed382> STL in Linux</a>
   - <a href=#73069588197e4d9da3375fc64593122d> General </a>
     - <a href=#c7787130e5ea4c0b8d0bb6fdd4c4101d> Using data</a>
   - <a href=#6cc1a065fec0484bbc80522691c3484b> Processes</a>
     - <a href=#65ff44f12c0b46689cd30a4747f2d14b> Download</a>
     - <a href=#8cd042721dd04a49ae22872666c05b94> Boot (file 002.boot_from_dot_stl.file.md)</a>
     - <a href=#43dfd0fd9ed247f5b73b378d651c9dd9> Update</a>
     - <a href=#d257f469f6354b6e8775f2a156cb966c> Delete </a>
     - <a href=#642e3c11d3e04f61854c946769f3c79f> Common</a>
     - <a href=#4ca9133a93a74f3396f1d5c1c493292f> Save ~/.stl.d</a>
   - <a href=#498c4343b4424c74a63e3827e0b044d2> Files :: `~/.stl.d`</a>
     - <a href=#6a32851db3c44f9e9d58746b30b453ca> Download </a>
     - <a href=#ca3d3c11bc534a1cbb98a5828dcdb3b0> Boot</a>
       - <a href=#3c04bf573c0a423998b432d7ed228522> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#fe7140bcf0ad48ce8f2331d30d7a60da> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#ef7f86e7e7d74ef784d893abf978f4fc> Delete</a>
     - <a href=#de991a3e37b147fea7def2e70742e36d> Common</a>
       - <a href=#d251b1d0936a41a6ac68374d712d828f> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>
   - <a href=#b78f23bdd0f146f0b410e21ef58e8fb0> Lexicon </a>
     - <a href=#fafd6d8b439148368ab781275e3950bb> Extend name entety</a>
       - <a href=#b264a929c2ea4d82a7c09ed7ee3114dc> From content file or directory</a>
       - <a href=#b81bc9dc36634908a4154d6b8d15c77b> From function extend - informaiton</a>
     - <a href=#0bc62c368d064080bb34fdc703805ebb> Error name </a>
     - <a href=#ab4e948ad75c4eafbcfc634a006f86d8> Abbriviations</a>
       - <a href=#c9a980a0bde947609b809a4a8327b8a2> in value </a>
       - <a href=#1a9136bc038e4ffea82a4c1d7a6c4a3f> In Latin</a>
   - <a href=#d846d024b94d4200a1b6f43de4729876> Data</a>
     - <a href=#1a5a3611700b470b8e5f4f650d424221> Flags</a>
       - <a href=#c1375fb248114437ab29ee893a057e7b> Global in dr: `~/`</a>
       - <a href=#19a1802503164d168ff9ef4785a28918> Local in dr: `~/.stl.d/data.d/flag.d`</a>
   - <a href=#efc1b92f83a94eee8f0b668020995f34> Structures</a>
     - <a href=#fa13ea8d421c4cf59edd917533ee47b1> .arb </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus/cntx.ins.d /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732449245_24112024185405

DATX: 1732449245
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="d9ad33f2d1e448059a3a52d7321ed382"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.general.d/001.txt.md)



 <a id="73069588197e4d9da3375fc64593122d"></a>
## General 


[001.txt.md](cntx.ins.d/002.general.d/003.use_data.d/001.txt.md)



 <a id="c7787130e5ea4c0b8d0bb6fdd4c4101d"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="6cc1a065fec0484bbc80522691c3484b"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="65ff44f12c0b46689cd30a4747f2d14b"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="8cd042721dd04a49ae22872666c05b94"></a>
### Boot (file 002.boot_from_dot_stl.file.md)


[002.boot_from_dot_stl.file.md](cntx.ins.d/003.processes.d/003.boot.d/002.boot_from_dot_stl.file.md)


[001.txt.md](cntx.ins.d/003.processes.d/004.upd.d/001.txt.md)



 <a id="43dfd0fd9ed247f5b73b378d651c9dd9"></a>
### Update


[001.txt.md](cntx.ins.d/003.processes.d/005.dlt.d/001.txt.md)



 <a id="d257f469f6354b6e8775f2a156cb966c"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/006.comm.d/001.txt.md)



 <a id="642e3c11d3e04f61854c946769f3c79f"></a>
### Common


[001.txt.md](cntx.ins.d/003.processes.d/007.save.d/001.txt.md)



 <a id="4ca9133a93a74f3396f1d5c1c493292f"></a>
### Save ~/.stl.d


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="498c4343b4424c74a63e3827e0b044d2"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="6a32851db3c44f9e9d58746b30b453ca"></a>
### Download 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="ca3d3c11bc534a1cbb98a5828dcdb3b0"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="3c04bf573c0a423998b432d7ed228522"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="fe7140bcf0ad48ce8f2331d30d7a60da"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="ef7f86e7e7d74ef784d893abf978f4fc"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="de991a3e37b147fea7def2e70742e36d"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="d251b1d0936a41a6ac68374d712d828f"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 


[001.txt.md](cntx.ins.d/005.lexicon.d/001.txt.md)



 <a id="b78f23bdd0f146f0b410e21ef58e8fb0"></a>
## Lexicon 


[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/001.txt.md)



 <a id="fafd6d8b439148368ab781275e3950bb"></a>
### Extend name entety

[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/002.from_content.d/001.txt.md)



 <a id="b264a929c2ea4d82a7c09ed7ee3114dc"></a>
#### From content file or directory

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


[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/003.from_function.d/001.txt.md)



 <a id="b81bc9dc36634908a4154d6b8d15c77b"></a>
#### From function extend - informaiton

- `.ln_src.` - src of `ln srs dist` 

- `.ln_dst.` - dist of `ln src dist` 


[001.txt.md](cntx.ins.d/005.lexicon.d/003.err_name.d/001.txt.md)



 <a id="0bc62c368d064080bb34fdc703805ebb"></a>
### Error name 

    NOT_FILE
    IS_FILE
    NOT_DIR
    IS_DIR


[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbriviatins.d/001.txt.md)



 <a id="ab4e948ad75c4eafbcfc634a006f86d8"></a>
### Abbriviations

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

[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbriviatins.d/002.in_value.d/001.txt.md)



 <a id="c9a980a0bde947609b809a4a8327b8a2"></a>
#### in value 

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

[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbriviatins.d/003.in_latin.d/001.txt.md)



 <a id="1a9136bc038e4ffea82a4c1d7a6c4a3f"></a>
#### In Latin

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



 <a id="d846d024b94d4200a1b6f43de4729876"></a>
## Data


[001.txt.md](cntx.ins.d/006.data.d/002.flags.d/001.txt.md)



 <a id="1a5a3611700b470b8e5f4f650d424221"></a>
### Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="c1375fb248114437ab29ee893a057e7b"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="19a1802503164d168ff9ef4785a28918"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.L1.txt.md](cntx.ins.d/007.structures.d/001.L1.txt.md)



 <a id="efc1b92f83a94eee8f0b668020995f34"></a>
## Structures



[001.txt.md](cntx.ins.d/007.structures.d/002.d/001.txt.md)



 <a id="fa13ea8d421c4cf59edd917533ee47b1"></a>
### .arb 




