
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
 - <a href=#26c4771a453248bd85b95ba3a29ad98f> STL in Linux</a>
   - <a href=#734fc998d86244b2ae093b6bdf67c350> General</a>
     - <a href=#f2e2b0364761487b9963a4738324c0b2> Using data</a>
   - <a href=#c218496d32c140fc9988c2814a9bf4e7> Processes</a>
     - <a href=#337ceeaf5e0e449da5a45bfe6d3a10f9> Download</a>
     - <a href=#58a1b760ef7e4486aa601d4b4aeacabc> Boot (file 002.boot_from_dot_stl.file.md)</a>
     - <a href=#971297b2b05e4440bd43bd8183178a55> Update</a>
     - <a href=#197e5ca4967347d3ad4c1f2dba7254a1> Delete </a>
     - <a href=#b40a155eeafa470ebf04f3e6ed789fae> Common</a>
     - <a href=#2e5d733900464e18845686389b59f5a0> Save ~/.stl.d</a>
   - <a href=#dd4d289b1f524160b2dcb08055d32223> Files :: `~/.stl.d`</a>
     - <a href=#12380722ce76418a969055b1198c0a6e> Download</a>
     - <a href=#3170e0e0780b4d039a717d054212ba8a> Boot</a>
       - <a href=#36e4ade3289742adab39957d86073ea7> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#daba6f0f4dc4426bbc8fa9e716b0877e> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#75d9dbbaa7ba4142984300a973b26bc1> Delete</a>
     - <a href=#21f3f3a59c6549128de99f801e804380> Common</a>
       - <a href=#04e8faf26dbb4db4ae28fe4e459a5b1b> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>
   - <a href=#e0a77f5b676446f397f01d10bdf6ee92> Lexicon </a>
     - <a href=#2bcc57ae13d04a55ac529a887c3836a7> Extend name entety</a>
       - <a href=#f8d3dcf68d224f348085485fdfc65d65> From content file or directory</a>
       - <a href=#32fe7b11a82e43888b620a419ce7472e> From function extend - informaiton</a>
     - <a href=#ce8d2b2bb1a1488bb144c5931d1dda7d> Error name </a>
     - <a href=#7a52ebdcb2724ee0907e555bbff89872> Abbriviations</a>
       - <a href=#539e8d02ec7d4f059a155f3a8f04eb7d> in value </a>
       - <a href=#45d26192acff4590a14f9a5eae59657e> In Latin</a>
   - <a href=#833c16b3f6c947afa036520970d24958> Data</a>
     - <a href=#0856ef6d3bd04a36af7c2af0d1a539fc> Flags</a>
       - <a href=#8b5259a154a247f8a8130a0f0b0feede> Global in dr: `~/`</a>
       - <a href=#b4710c5b9df74359bc448ac165d30cb2> Local in dr: `~/.stl.d/data.d/flag.d`</a>
   - <a href=#96bb09aeb73d48d9be2c9d1022e2b600> Structures</a>
     - <a href=#85a4a61b72bd46a0b386e052e18ea92a> .arb </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus/_cntx.ins.d /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus/_cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/stl/.d/.opus/readme.opus/_cntx.ins.d/099.stl_in_linux.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732621451_26112024184411

DATX: 1732621451
-->


[001.001.first_head.txt.md](_cntx.ins.d/001.001.first_head.txt.md)



 <a id="26c4771a453248bd85b95ba3a29ad98f"></a>
# STL in Linux

[001.txt.md](_cntx.ins.d/002.general.d/001.txt.md)



 <a id="734fc998d86244b2ae093b6bdf67c350"></a>
## General


[001.txt.md](_cntx.ins.d/002.general.d/003.use_data.d/001.txt.md)



 <a id="f2e2b0364761487b9963a4738324c0b2"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](_cntx.ins.d/003.processes.d/001.txt.md)



 <a id="c218496d32c140fc9988c2814a9bf4e7"></a>
## Processes


[001.txt.md](_cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="337ceeaf5e0e449da5a45bfe6d3a10f9"></a>
### Download
 

[001.txt.md](_cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="58a1b760ef7e4486aa601d4b4aeacabc"></a>
### Boot (file 002.boot_from_dot_stl.file.md)


[002.boot_from_dot_stl.file.md](_cntx.ins.d/003.processes.d/003.boot.d/002.boot_from_dot_stl.file.md)


[001.txt.md](_cntx.ins.d/003.processes.d/004.upd.d/001.txt.md)



 <a id="971297b2b05e4440bd43bd8183178a55"></a>
### Update


[001.txt.md](_cntx.ins.d/003.processes.d/005.dlt.d/001.txt.md)



 <a id="197e5ca4967347d3ad4c1f2dba7254a1"></a>
### Delete 


[001.txt.md](_cntx.ins.d/003.processes.d/006.comm.d/001.txt.md)



 <a id="b40a155eeafa470ebf04f3e6ed789fae"></a>
### Common


[001.txt.md](_cntx.ins.d/003.processes.d/007.save.d/001.txt.md)



 <a id="2e5d733900464e18845686389b59f5a0"></a>
### Save ~/.stl.d


[001.1L.txt.md](_cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="dd4d289b1f524160b2dcb08055d32223"></a>
## Files :: `~/.stl.d`




[001.txt.md](_cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="12380722ce76418a969055b1198c0a6e"></a>
### Download


[001.txt.md](_cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="3170e0e0780b4d039a717d054212ba8a"></a>
### Boot
 


[001.txt.md](_cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="36e4ade3289742adab39957d86073ea7"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](_cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="daba6f0f4dc4426bbc8fa9e716b0877e"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](_cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="75d9dbbaa7ba4142984300a973b26bc1"></a>
### Delete


[001.txt.md](_cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="21f3f3a59c6549128de99f801e804380"></a>
### Common


[001.txt.md](_cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="04e8faf26dbb4db4ae28fe4e459a5b1b"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 


[001.txt.md](_cntx.ins.d/005.lexicon.d/001.txt.md)



 <a id="e0a77f5b676446f397f01d10bdf6ee92"></a>
## Lexicon 


[001.txt.md](_cntx.ins.d/005.lexicon.d/002.ext.d/001.txt.md)



 <a id="2bcc57ae13d04a55ac529a887c3836a7"></a>
### Extend name entety

[001.txt.md](_cntx.ins.d/005.lexicon.d/002.ext.d/002.from_content.d/001.txt.md)



 <a id="f8d3dcf68d224f348085485fdfc65d65"></a>
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


[001.txt.md](_cntx.ins.d/005.lexicon.d/002.ext.d/003.from_function.d/001.txt.md)



 <a id="32fe7b11a82e43888b620a419ce7472e"></a>
#### From function extend - informaiton

- `.ln_src.` - src of `ln srs dist` 

- `.ln_dst.` - dist of `ln src dist` 


[001.txt.md](_cntx.ins.d/005.lexicon.d/003.err_name.d/001.txt.md)



 <a id="ce8d2b2bb1a1488bb144c5931d1dda7d"></a>
### Error name 

    NOT_FILE
    IS_FILE
    NOT_DIR
    IS_DIR


[001.txt.md](_cntx.ins.d/005.lexicon.d/004.abbriviatins.d/001.txt.md)



 <a id="7a52ebdcb2724ee0907e555bbff89872"></a>
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

[001.txt.md](_cntx.ins.d/005.lexicon.d/004.abbriviatins.d/002.in_value.d/001.txt.md)



 <a id="539e8d02ec7d4f059a155f3a8f04eb7d"></a>
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

[001.txt.md](_cntx.ins.d/005.lexicon.d/004.abbriviatins.d/003.in_latin.d/001.txt.md)



 <a id="45d26192acff4590a14f9a5eae59657e"></a>
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


[001.L1.txt.md](_cntx.ins.d/006.data.d/001.L1.txt.md)



 <a id="833c16b3f6c947afa036520970d24958"></a>
## Data


[001.txt.md](_cntx.ins.d/006.data.d/002.flags.d/001.txt.md)



 <a id="0856ef6d3bd04a36af7c2af0d1a539fc"></a>
### Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="8b5259a154a247f8a8130a0f0b0feede"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="b4710c5b9df74359bc448ac165d30cb2"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.L1.txt.md](_cntx.ins.d/007.structures.d/001.L1.txt.md)



 <a id="96bb09aeb73d48d9be2c9d1022e2b600"></a>
## Structures



[001.txt.md](_cntx.ins.d/007.structures.d/002.d/001.txt.md)



 <a id="85a4a61b72bd46a0b386e052e18ea92a"></a>
### .arb 



