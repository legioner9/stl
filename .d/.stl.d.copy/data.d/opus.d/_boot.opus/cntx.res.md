
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
 - <a href=#ed2faa93f1e74eaca9b40c74c98325f6> STL in Linux</a>
   - <a href=#43dde195b7df4e618283d0e6a5f9637f> General </a>
     - <a href=#ce9e5fa29cda4b58a58be460385f0460> Using data</a>
   - <a href=#c55184ba631e4a399eb8e0642a71f73c> Processes</a>
     - <a href=#6de49cd6b02f41d3abecc8c10ccb5043> Download</a>
     - <a href=#466b8655f094422d8e373f77dcb4030e> Boot</a>
       - <a href=#f8e606a9948e40a18b31a1bf7ef873d6> Up to memory - function</a>
       - <a href=#90ec97b10a69421d821416a74028b1b8> Test </a>
     - <a href=#efffd5392ec9413881fa973ce482198f> Update</a>
     - <a href=#d5c2efdf894d4a47ad9e7e731d3f1b75> Delete </a>
     - <a href=#49d996c89d79460290989895e55d0cd6> Common</a>
     - <a href=#66a2b7ab6d5d4e7c9c80989ce5f500f1> Save ~/.stl.d</a>
   - <a href=#4b129cb58c714c1dbc697c8fb38d80f7> Files :: `~/.stl.d`</a>
     - <a href=#22358f05959f479c83c64d75f9d9a1b8> Download </a>
     - <a href=#b631ed9e97254cb5bf39aa3b6024fd85> Boot</a>
       - <a href=#80645c3ce4144af2becf9fbba7a4da2d> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#41d046acf4e148f9bc1328a3ee69fa81> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#41be9fda79a6406daf08760a7d79146d> Delete</a>
     - <a href=#33a49ed213ec410697d6028d5ada25b4> Common</a>
       - <a href=#4d929d8f214c4a2d9d9ea46fb1a3307e> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>
   - <a href=#410237667e764b8bb54043604d398e5d> Lexicon </a>
     - <a href=#9eef63fdfebf40f2929e6dadc599e3d8> Extend name entety</a>
       - <a href=#2f73c19ed3524797a026824924754626> From content file or directory</a>
       - <a href=#a7b7e3c0157a47558ecedf9f58d0c340> From function extend - informaiton</a>
     - <a href=#e4171531ff3f415a87d262d89e9f54c5> Error name </a>
     - <a href=#44e96458187542e582ff2c1773e13a76> Abbriviations</a>
       - <a href=#1c87c06f2193453888f5c04f3cec3a50> in value </a>
       - <a href=#d7a3090ac848423ab1a2617af9544508> In Latin</a>
   - <a href=#5b9cf223a60142d9825870eca5749366> Data</a>
     - <a href=#fa9a807978334d5da87d2fd22289d3a3> Flags</a>
       - <a href=#0965cc0fbc6d43d6a6ac330f3acf2988> Global in dr: `~/`</a>
       - <a href=#0679996eb9a048aa995c7004913ab3a2> Local in dr: `~/.stl.d/data.d/flag.d`</a>
   - <a href=#f987798db7294c51ad16ed9d89d82fe9> Structures</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732441308_24112024164148

DATX: 1732441308
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="ed2faa93f1e74eaca9b40c74c98325f6"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.general.d/001.txt.md)



 <a id="43dde195b7df4e618283d0e6a5f9637f"></a>
## General 


[001.txt.md](cntx.ins.d/002.general.d/003.use_data.d/001.txt.md)



 <a id="ce9e5fa29cda4b58a58be460385f0460"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="c55184ba631e4a399eb8e0642a71f73c"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="6de49cd6b02f41d3abecc8c10ccb5043"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="466b8655f094422d8e373f77dcb4030e"></a>
### Boot


[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/002.up_to_mem.d/001.txt.md)



 <a id="f8e606a9948e40a18b31a1bf7ef873d6"></a>
#### Up to memory - function


[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/003.tst.d/001.txt.md)



 <a id="90ec97b10a69421d821416a74028b1b8"></a>
#### Test 


[001.txt.md](cntx.ins.d/003.processes.d/004.upd.d/001.txt.md)



 <a id="efffd5392ec9413881fa973ce482198f"></a>
### Update


[001.txt.md](cntx.ins.d/003.processes.d/005.dlt.d/001.txt.md)



 <a id="d5c2efdf894d4a47ad9e7e731d3f1b75"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/006.comm.d/001.txt.md)



 <a id="49d996c89d79460290989895e55d0cd6"></a>
### Common


[001.txt.md](cntx.ins.d/003.processes.d/007.save.d/001.txt.md)



 <a id="66a2b7ab6d5d4e7c9c80989ce5f500f1"></a>
### Save ~/.stl.d


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="4b129cb58c714c1dbc697c8fb38d80f7"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="22358f05959f479c83c64d75f9d9a1b8"></a>
### Download 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="b631ed9e97254cb5bf39aa3b6024fd85"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="80645c3ce4144af2becf9fbba7a4da2d"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="41d046acf4e148f9bc1328a3ee69fa81"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="41be9fda79a6406daf08760a7d79146d"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="33a49ed213ec410697d6028d5ada25b4"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="4d929d8f214c4a2d9d9ea46fb1a3307e"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 


[001.txt.md](cntx.ins.d/005.lexicon.d/001.txt.md)



 <a id="410237667e764b8bb54043604d398e5d"></a>
## Lexicon 


[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/001.txt.md)



 <a id="9eef63fdfebf40f2929e6dadc599e3d8"></a>
### Extend name entety

[001.txt.md](cntx.ins.d/005.lexicon.d/002.ext.d/002.from_content.d/001.txt.md)



 <a id="2f73c19ed3524797a026824924754626"></a>
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



 <a id="a7b7e3c0157a47558ecedf9f58d0c340"></a>
#### From function extend - informaiton

- `.ln_src.` - src of `ln srs dist` 

- `.ln_dst.` - dist of `ln src dist` 


[001.txt.md](cntx.ins.d/005.lexicon.d/003.err_name.d/001.txt.md)



 <a id="e4171531ff3f415a87d262d89e9f54c5"></a>
### Error name 

    NOT_FILE
    IS_FILE
    NOT_DIR
    IS_DIR


[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/001.txt.md)



 <a id="44e96458187542e582ff2c1773e13a76"></a>
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

[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/002.in_value.d/001.txt.md)



 <a id="1c87c06f2193453888f5c04f3cec3a50"></a>
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

[001.txt.md](cntx.ins.d/005.lexicon.d/004.abbrriviatins.d/003.in_latin.d/001.txt.md)



 <a id="d7a3090ac848423ab1a2617af9544508"></a>
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



 <a id="5b9cf223a60142d9825870eca5749366"></a>
## Data


[001.txt.md](cntx.ins.d/006.data.d/002.flags.d/001.txt.md)



 <a id="fa9a807978334d5da87d2fd22289d3a3"></a>
### Flags

Acceptable values:

    0 - false 
    1 - true

 <a id="0965cc0fbc6d43d6a6ac330f3acf2988"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="0679996eb9a048aa995c7004913ab3a2"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: default 0 :: `source ~/.stl.d/flow.d/boot.d/boot.sh` (`&> ~/.stl.d/data.d/log.d/stlrc.log` | `1>/dev/null`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: default 1 ::(reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.L1.txt.md](cntx.ins.d/007.structures.d/001.L1.txt.md)



 <a id="f987798db7294c51ad16ed9d89d82fe9"></a>
## Structures





