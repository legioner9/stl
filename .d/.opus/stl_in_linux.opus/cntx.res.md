
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
 - <a href=#0d5b347cadb2432f9634ddeb344f4ee3> STL in Linux</a>
   - <a href=#12301703a7824f0782f5e1765c3fe354> General </a>
     - <a href=#75841bb30b2f4ae7bddaee7d186fdcca> Using data</a>
   - <a href=#e3c5c35d161e4e63b4b2c258e8d26855> Processes</a>
     - <a href=#5aa7629c09ea4ca0908380e0766a66fb> Download</a>
     - <a href=#4a21df9d8b0844fdb96c1509fb3f5562> Boot</a>
     - <a href=#17ebc9a00bed4858a9510f9407a7280c> Update</a>
     - <a href=#da7c8fd240274f47b2b9c5c59d10f359> Delete </a>
     - <a href=#57e124fe918943fe9d7ecc19987b9894> Common</a>
     - <a href=#560827131bf94260ab428909518967fa> Save ~/.stl.d</a>
   - <a href=#623f0f12ff76437cbc72e43d5b087242> Files :: `~/.stl.d`</a>
     - <a href=#6c7fe369ba624418b96c045535b6747f> Download </a>
     - <a href=#4c026c1faf0f4d84823e039d92b6e415> Boot</a>
       - <a href=#7be15d846f874659a7e2b7a9f93e00a8> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#5bee56697d59426da7217f4c246dd1b0> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#389689bde1b3471b8762d1aa89bd440a> Delete</a>
     - <a href=#f7b79ed20a444e0194d688c42fbce062> Common</a>
       - <a href=#cd1de1d9d0384d99a36753a7e614c687> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>
   - <a href=#8996ad9ce5dd4f368662c0242d13dd32> Lexicon </a>
     - <a href=#b319770cb92745cfb21e03272924f1ff> Extend name entety</a>
       - <a href=#a7b11bd994254106aaee14cdbecb7ca6> From content file or directory</a>
       - <a href=#17b02cb380c5401e9c2520b039c1ccd5> From function extend - informaiton</a>
     - <a href=#81c3008378ea4c3ebaeee64cb325b33b> Error name </a>
     - <a href=#7c0f7366a04640599cab0d1b22953e7a> Abbriviations</a>
       - <a href=#c46fc8837f514717ad02d6a38793d55b> in value </a>
       - <a href=#c2239d2349e4442387e04b64f06127b7> In Latin</a>
   - <a href=#8b2544f2acce4400a48ee8f21da6ab81> Data</a>
     - <a href=#5bbcfbfb434944019aaf425084ae52fd> Flags</a>
       - <a href=#36bc8234b77a4d899886790bcc4c01b1> Global in dr: `~/`</a>
       - <a href=#ae5fc8225f284ff6a3eb8a7acbc6c9c3> Local in dr: `~/.stl.d/data.d/flag.d`</a>
   - <a href=#424ff6e3e2ef42a8923957e3d3968264> Structures</a>
     - <a href=#a3d477af4336486085507384f3ad15aa> .arb </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus/cntx.ins.d /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732448855_24112024184735

DATX: 1732448855
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="0d5b347cadb2432f9634ddeb344f4ee3"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.general.d/001.txt.md)



 <a id="12301703a7824f0782f5e1765c3fe354"></a>
## General 


[001.txt.md](cntx.ins.d/002.general.d/003.use_data.d/001.txt.md)



 <a id="75841bb30b2f4ae7bddaee7d186fdcca"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="e3c5c35d161e4e63b4b2c258e8d26855"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="5aa7629c09ea4ca0908380e0766a66fb"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="4a21df9d8b0844fdb96c1509fb3f5562"></a>
### Boot


[002.boot_from_dot_stl.file.md](cntx.ins.d/003.processes.d/003.boot.d/002.boot_from_dot_stl.file.md)


[001.txt.md](cntx.ins.d/003.processes.d/004.upd.d/001.txt.md)



 <a id="17ebc9a00bed4858a9510f9407a7280c"></a>
### Update


[001.txt.md](cntx.ins.d/003.processes.d/005.dlt.d/001.txt.md)



 <a id="da7c8fd240274f47b2b9c5c59d10f359"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/006.comm.d/001.txt.md)



 <a id="57e124fe918943fe9d7ecc19987b9894"></a>
### Common


[001.txt.md](cntx.ins.d/003.processes.d/007.save.d/001.txt.md)



 <a id="560827131bf94260ab428909518967fa"></a>
### Save ~/.stl.d


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="623f0f12ff76437cbc72e43d5b087242"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="6c7fe369ba624418b96c045535b6747f"></a>
### Download 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="4c026c1faf0f4d84823e039d92b6e415"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="7be15d846f874659a7e2b7a9f93e00a8"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="5bee56697d59426da7217f4c246dd1b0"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="389689bde1b3471b8762d1aa89bd440a"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="f7b79ed20a444e0194d688c42fbce062"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="cd1de1d9d0384d99a36753a7e614c687"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 


[001.txt.md](cntx.ins.d/005.lexicon.d/001.txt.md)



 <a id="8996ad9ce5dd4f368662c0242d13dd32"></a>
## Lexicon 


[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/001.txt.md)



 <a id="b319770cb92745cfb21e03272924f1ff"></a>
### Extend name entety

[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/002.from_content.d/001.txt.md)



 <a id="a7b11bd994254106aaee14cdbecb7ca6"></a>
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



 <a id="17b02cb380c5401e9c2520b039c1ccd5"></a>
#### From function extend - informaiton

- `.ln_src.` - src of `ln srs dist` 

- `.ln_dst.` - dist of `ln src dist` 


[001.txt.md](cntx.ins.d/005.lexicon.d/003.err_name.d/001.txt.md)



 <a id="81c3008378ea4c3ebaeee64cb325b33b"></a>
### Error name 

    NOT_FILE
    IS_FILE
    NOT_DIR
    IS_DIR


[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbriviatins.d/001.txt.md)



 <a id="7c0f7366a04640599cab0d1b22953e7a"></a>
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



 <a id="c46fc8837f514717ad02d6a38793d55b"></a>
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



 <a id="c2239d2349e4442387e04b64f06127b7"></a>
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



 <a id="8b2544f2acce4400a48ee8f21da6ab81"></a>
## Data


[001.txt.md](cntx.ins.d/006.data.d/002.flags.d/001.txt.md)



 <a id="5bbcfbfb434944019aaf425084ae52fd"></a>
### Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="36bc8234b77a4d899886790bcc4c01b1"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="ae5fc8225f284ff6a3eb8a7acbc6c9c3"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.L1.txt.md](cntx.ins.d/007.structures.d/001.L1.txt.md)



 <a id="424ff6e3e2ef42a8923957e3d3968264"></a>
## Structures



[001.txt.md](cntx.ins.d/007.structures.d/002.d/001.txt.md)



 <a id="a3d477af4336486085507384f3ad15aa"></a>
### .arb 




