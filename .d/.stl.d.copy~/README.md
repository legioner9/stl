
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
 - <a href=#582b6b365831463db390df1c33a1a997> STL in Linux</a>
   - <a href=#5e5ebe0f66864faa91736f05bbfcfb95> General </a>
     - <a href=#f149f4b0a28b4c8bae191cf906aa6acd> Flags</a>
       - <a href=#6f43723bea3a4749923119d589e65a2f> Global in dr: `~/`</a>
       - <a href=#34457b821a5f4cf7b2fa092434fffbd2> Local in dr: `~/.stl.d/data.d/flag.d`</a>
     - <a href=#5aa60a5c92c74c188e7f827eef44c7d0> Using data</a>
   - <a href=#7e729f6321764a7e9a8ef5bef6df06fb> Processes</a>
     - <a href=#e68c99f5d8c042acbed1e70c86abd73f> Download</a>
     - <a href=#8883ee71aefe472691d86643bffae417> Boot</a>
       - <a href=#54296486eb4442f5865910888cd3a21f> Up to memory - function</a>
       - <a href=#70e4a18658a34180af1de1978dc98e24> Test </a>
     - <a href=#7868341eee604878bd9c39cc7a70cb98> Delete </a>
     - <a href=#a7d384e0e07c422bb9fc1c4ddf688d82> Common</a>
     - <a href=#8f18802f784b4b678551a7b64676024a> Save ~/.stl.d</a>
   - <a href=#8bf147f9238444b08196b539b069110f> Files :: `~/.stl.d`</a>
     - <a href=#88f29056796f42b18f010844a908fbda> Download </a>
     - <a href=#b34381d001974c719d5f210e8ec210f4> Boot</a>
       - <a href=#7e8b48a3b0c4472f9c4b80a7d96c3192> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#5d39fefc0f0e436688a8685c25f37c94> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#90b2b3ccd5564f6a914c89212da9bc5d> Delete</a>
     - <a href=#3f132249041f4bd9a0ddc0c121e2cc75> Common</a>
       - <a href=#54b8cd5e9fb048fabf86ce2a095c2da5> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>
 - <a href=#26c3a3d4379b4767b27a68bccf2b67de> Lexicon </a>
   - <a href=#9ff1584fa8cc449f9cb855fa31f566f9> From function extend - informaiton</a>
   - <a href=#fd0dc5905d64425db1c7535b2734e796> From content file or directory</a>
   - <a href=#facb6d07807c429eaff5937abcedc01b> Error name </a>
   - <a href=#e924f9b3fd44433f9497ab697ca92482> Abbriviations</a>
     - <a href=#6f318008a7ad4e2c83e9d4a2d5bcce1a> in value </a>
     - <a href=#19fff6fe24a74b82968e884378e8f66c> In Latin</a>
 - <a href=#d074fda2003d42738ea6bd21977e69c8> Data</a>
   - <a href=#5b573d91985a4b8c8f064ad7ed0520ac> Flags</a>
     - <a href=#7514d3e3fc264b23bb05c6e06923ee02> Global in dr: `~/`</a>
     - <a href=#1abd25921677407ea7ba35d9996f957d> Local in dr: `~/.stl.d/data.d/flag.d`</a>
 - <a href=#0c5243d44eaf4455bdd92bf1bb51054b> Structures</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/README.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732439471_24112024161111

DATX: 1732439471
-->


[001.001.first_head.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/001.001.first_head.txt.md)



 <a id="582b6b365831463db390df1c33a1a997"></a>
# STL in Linux

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/002.general.d/001.txt.md)



 <a id="5e5ebe0f66864faa91736f05bbfcfb95"></a>
## General 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/002.general.d/003.flags.d/001.txt.md)



 <a id="f149f4b0a28b4c8bae191cf906aa6acd"></a>
### Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="6f43723bea3a4749923119d589e65a2f"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="34457b821a5f4cf7b2fa092434fffbd2"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/002.general.d/003.use_data.d/001.txt.md)



 <a id="5aa60a5c92c74c188e7f827eef44c7d0"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/001.txt.md)



 <a id="7e729f6321764a7e9a8ef5bef6df06fb"></a>
## Processes


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="e68c99f5d8c042acbed1e70c86abd73f"></a>
### Download
 

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="8883ee71aefe472691d86643bffae417"></a>
### Boot


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/003.boot.d/002.up_to_mem.d/001.txt.md)



 <a id="54296486eb4442f5865910888cd3a21f"></a>
#### Up to memory - function


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/003.boot.d/003.tst.d/001.txt.md)



 <a id="70e4a18658a34180af1de1978dc98e24"></a>
#### Test 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/004.dlt.d/001.txt.md)



 <a id="7868341eee604878bd9c39cc7a70cb98"></a>
### Delete 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/005.comm.d/001.txt.md)



 <a id="a7d384e0e07c422bb9fc1c4ddf688d82"></a>
### Common


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/003.processes.d/006.save.d/001.txt.md)



 <a id="8f18802f784b4b678551a7b64676024a"></a>
### Save ~/.stl.d


[001.1L.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="8bf147f9238444b08196b539b069110f"></a>
## Files :: `~/.stl.d`




[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="88f29056796f42b18f010844a908fbda"></a>
### Download 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="b34381d001974c719d5f210e8ec210f4"></a>
### Boot
 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="7e8b48a3b0c4472f9c4b80a7d96c3192"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="5d39fefc0f0e436688a8685c25f37c94"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="90b2b3ccd5564f6a914c89212da9bc5d"></a>
### Delete


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="3f132249041f4bd9a0ddc0c121e2cc75"></a>
### Common


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="54b8cd5e9fb048fabf86ce2a095c2da5"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/001.txt.md)



 <a id="26c3a3d4379b4767b27a68bccf2b67de"></a>
# Lexicon 


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/002.ext.d/001.txt.md)



 <a id="9ff1584fa8cc449f9cb855fa31f566f9"></a>
## From function extend - informaiton

- `.ln_src.` - src of `ln srs dist` 

- `.ln_dst.` - dist of `ln src dist` 

 <a id="fd0dc5905d64425db1c7535b2734e796"></a>
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



[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/003.err_name.d/001.txt.md)



 <a id="facb6d07807c429eaff5937abcedc01b"></a>
## Error name 

    NOT_FILE
    IS_FILE
    NOT_DIR
    IS_DIR


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/001.txt.md)



 <a id="e924f9b3fd44433f9497ab697ca92482"></a>
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

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/002.in_value.d/001.txt.md)



 <a id="6f318008a7ad4e2c83e9d4a2d5bcce1a"></a>
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

[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/003.in_latin.d/001.txt.md)



 <a id="19fff6fe24a74b82968e884378e8f66c"></a>
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


[001.L1.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/006.data.d/001.L1.txt.md)



 <a id="d074fda2003d42738ea6bd21977e69c8"></a>
# Data


[001.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/006.data.d/002.flags.d/001.txt.md)



 <a id="5b573d91985a4b8c8f064ad7ed0520ac"></a>
## Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="7514d3e3fc264b23bb05c6e06923ee02"></a>
### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="1abd25921677407ea7ba35d9996f957d"></a>
### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.L1.txt.md](data.d/opus.d/boot.opus/cntx.ins.d/007.structures.d/001.L1.txt.md)



 <a id="0c5243d44eaf4455bdd92bf1bb51054b"></a>
# Structures





