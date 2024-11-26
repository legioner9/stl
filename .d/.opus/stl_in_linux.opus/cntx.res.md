
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
 - <a href=#30c9d4b640bf482a8667c6e9ef195136> STL in Linux</a>
   - <a href=#895f70d35e274df5bdf35e1e3d2d0e31> General </a>
     - <a href=#d56409e41d2f4e54b90fe2ad5b16924a> Using data</a>
   - <a href=#d2db7e5f5d3f4ff2a1a8af48eb0cd4cd> Processes</a>
     - <a href=#fa70992934664d549d6a9db6350a3e94> Download</a>
     - <a href=#f3cb5a9ce06d4f1193c15457829d4cbc> Boot (file 002.boot_from_dot_stl.file.md)</a>
     - <a href=#c79ddbd387934fc4878ecbfa0f2a685a> Update</a>
     - <a href=#d6d2b0a2e4f64be6afd33f1d1c751762> Delete </a>
     - <a href=#363df2dcffc34c7d96953bd42895ef57> Common</a>
     - <a href=#bbea5b82f79346c5877876d2929f22b0> Save ~/.stl.d</a>
   - <a href=#011aab40371242fe888ed871579f1806> Files :: `~/.stl.d`</a>
     - <a href=#151f674e10354825ac8789aa90082d30> Download </a>
     - <a href=#f083f55ec6974c5cb06acd80174ba5c4> Boot</a>
       - <a href=#1ba690093e144fd094b1d55ca3556477> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#d8dc2d2035f3420ab42d3337ea17c349> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#e712613a193e4f0f9a0080cb0755bbd4> Delete</a>
     - <a href=#3b593306ddec46acbbfb7c19d655c7af> Common</a>
       - <a href=#f1c8c32b33934d88a42e37148a599f9a> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>
   - <a href=#3b31c9044e264abc87e408d5fa920317> Lexicon </a>
     - <a href=#3182f22f915f4fdb99c8a619fcc16c62> Extend name entety</a>
       - <a href=#4a21c8e509ca463b9583529ace3328df> From content file or directory</a>
       - <a href=#c67a6a8362ed42708fb817c22f791065> From function extend - informaiton</a>
     - <a href=#d0af6b4d23a5464ca820d8c6f3179318> Error name </a>
     - <a href=#3f8f6e4140d049c99d603a7025dca60d> Abbriviations</a>
       - <a href=#d05b833715554f84822daef3a7af8745> in value </a>
       - <a href=#e380e8e177f6402ba5fecb319a351fd7> In Latin</a>
   - <a href=#8bc786544ae7416aaca90e7f6367dcb4> Data</a>
     - <a href=#27a97e1ebee54ed98757d8ae1caea739> Flags</a>
       - <a href=#2225554751f442a787ca32f10030b67e> Global in dr: `~/`</a>
       - <a href=#305f01f52dae46aaafadeb9b92e1fc0c> Local in dr: `~/.stl.d/data.d/flag.d`</a>
   - <a href=#ea6e8eb86c4d48ab82567d39fa6e02e9> Structures</a>
     - <a href=#d93ed94b82a64766a214192478d89684> .arb </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus/cntx.ins.d /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/stl/.d/.opus/stl_in_linux.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732598134_26112024121534

DATX: 1732598134
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="30c9d4b640bf482a8667c6e9ef195136"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.general.d/001.txt.md)



 <a id="895f70d35e274df5bdf35e1e3d2d0e31"></a>
## General 


[001.txt.md](cntx.ins.d/002.general.d/003.use_data.d/001.txt.md)



 <a id="d56409e41d2f4e54b90fe2ad5b16924a"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="d2db7e5f5d3f4ff2a1a8af48eb0cd4cd"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="fa70992934664d549d6a9db6350a3e94"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="f3cb5a9ce06d4f1193c15457829d4cbc"></a>
### Boot (file 002.boot_from_dot_stl.file.md)


[002.boot_from_dot_stl.file.md](cntx.ins.d/003.processes.d/003.boot.d/002.boot_from_dot_stl.file.md)


[001.txt.md](cntx.ins.d/003.processes.d/004.upd.d/001.txt.md)



 <a id="c79ddbd387934fc4878ecbfa0f2a685a"></a>
### Update


[001.txt.md](cntx.ins.d/003.processes.d/005.dlt.d/001.txt.md)



 <a id="d6d2b0a2e4f64be6afd33f1d1c751762"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/006.comm.d/001.txt.md)



 <a id="363df2dcffc34c7d96953bd42895ef57"></a>
### Common


[001.txt.md](cntx.ins.d/003.processes.d/007.save.d/001.txt.md)



 <a id="bbea5b82f79346c5877876d2929f22b0"></a>
### Save ~/.stl.d


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="011aab40371242fe888ed871579f1806"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="151f674e10354825ac8789aa90082d30"></a>
### Download 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="f083f55ec6974c5cb06acd80174ba5c4"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="1ba690093e144fd094b1d55ca3556477"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="d8dc2d2035f3420ab42d3337ea17c349"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="e712613a193e4f0f9a0080cb0755bbd4"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="3b593306ddec46acbbfb7c19d655c7af"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="f1c8c32b33934d88a42e37148a599f9a"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 


[001.txt.md](cntx.ins.d/005.lexicon.d/001.txt.md)



 <a id="3b31c9044e264abc87e408d5fa920317"></a>
## Lexicon 


[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/001.txt.md)



 <a id="3182f22f915f4fdb99c8a619fcc16c62"></a>
### Extend name entety

[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/002.from_content.d/001.txt.md)



 <a id="4a21c8e509ca463b9583529ace3328df"></a>
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



 <a id="c67a6a8362ed42708fb817c22f791065"></a>
#### From function extend - informaiton

- `.ln_src.` - src of `ln srs dist` 

- `.ln_dst.` - dist of `ln src dist` 


[001.txt.md](cntx.ins.d/005.lexicon.d/003.err_name.d/001.txt.md)



 <a id="d0af6b4d23a5464ca820d8c6f3179318"></a>
### Error name 

    NOT_FILE
    IS_FILE
    NOT_DIR
    IS_DIR


[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbriviatins.d/001.txt.md)



 <a id="3f8f6e4140d049c99d603a7025dca60d"></a>
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



 <a id="d05b833715554f84822daef3a7af8745"></a>
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



 <a id="e380e8e177f6402ba5fecb319a351fd7"></a>
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



 <a id="8bc786544ae7416aaca90e7f6367dcb4"></a>
## Data


[001.txt.md](cntx.ins.d/006.data.d/002.flags.d/001.txt.md)



 <a id="27a97e1ebee54ed98757d8ae1caea739"></a>
### Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="2225554751f442a787ca32f10030b67e"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="305f01f52dae46aaafadeb9b92e1fc0c"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.L1.txt.md](cntx.ins.d/007.structures.d/001.L1.txt.md)



 <a id="ea6e8eb86c4d48ab82567d39fa6e02e9"></a>
## Structures



[001.txt.md](cntx.ins.d/007.structures.d/002.d/001.txt.md)



 <a id="d93ed94b82a64766a214192478d89684"></a>
### .arb 




