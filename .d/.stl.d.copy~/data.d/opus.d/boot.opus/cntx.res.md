
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
 - <a href=#67ff83e5572b4da586121c251cb5e237> STL OPUS  </a>
 - <a href=#37c9d26727904f8f98413e4bd1d3eb2f> Концепция </a>
 - <a href=#8a2f252593f345cabbc79a1277d4ad2d> Загрузка </a>
   - <a href=#a0373a0948b7434fac2014ce5c99d6e3> Сохранение ~/.stl.d</a>
   - <a href=#090ef89fea514670bbf5f26fb5c457af> Использование данных установки</a>
   - <a href=#c58eb200ef054e08bd6397e98358a370> Флаги</a>
     - <a href=#0385f1a5d2ce4ef18378d8e6513b2c9b> Глобальные in dr: `~/`</a>
     - <a href=#bbf4b8cf86034f91a44395b7e2d9b127> Локальные in dr: `~/.stl.d/data.d/flag.d`</a>
 - <a href=#a5f7ca261e2d4bb89cfd2d5cb3879561> Files :: `~/.stl.d`</a>
   - <a href=#be5a731eb54d4373829959602535bad4> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
   - <a href=#872ca7be066945bda55cb3e151af59fa> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
   - <a href=#51dc4813b3494ccea1199bf46f5b0afb> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenacce - NOT STABLE </a>
 - <a href=#d80fcdd0913a4de0b623a49db3b7a4d7> Установка</a>
 - <a href=#3f33788e65df4c1ba35283e20d2c72a3> Удаление </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732188217_21112024182337

DATX: 1732188217
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="67ff83e5572b4da586121c251cb5e237"></a>
# STL OPUS  

[001.txt.md](cntx.ins.d/001.concept.d/001.txt.md)



 <a id="37c9d26727904f8f98413e4bd1d3eb2f"></a>
# Концепция 



[001.txt.md](cntx.ins.d/002.boot.d/001.txt.md)



 <a id="8a2f252593f345cabbc79a1277d4ad2d"></a>
# Загрузка 


[001.txt.md](cntx.ins.d/002.boot.d/002.save.d/001.txt.md)



 <a id="a0373a0948b7434fac2014ce5c99d6e3"></a>
## Сохранение ~/.stl.d


[001.txt.md](cntx.ins.d/002.boot.d/003.use_data.d/001.txt.md)



 <a id="090ef89fea514670bbf5f26fb5c457af"></a>
## Использование данных установки

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/002.boot.d/004.flags.d/001.txt.md)



 <a id="c58eb200ef054e08bd6397e98358a370"></a>
## Флаги

0 - false
1 - true

 <a id="0385f1a5d2ce4ef18378d8e6513b2c9b"></a>
### Глобальные in dr: `~/`

    ~/.stl.use.flag - use or not stl  external setting behavior :: ~/.stl.d/flow.d/boot.d/boot.sh

 <a id="bbf4b8cf86034f91a44395b7e2d9b127"></a>
### Локальные in dr: `~/.stl.d/data.d/flag.d`

    ~/.stl.d/data.d/flag.d/stlrc.log.flag - start or not ~/.stl.d/flow.d/boot.d/boot.sh

    ~/.stl.d/data.d/flag.d/git_reset.flag - reset or not all git diff :: use in git_flow_functions


[001.1L.txt.md](cntx.ins.d/002.boot.d/005.files.d/001.1L.txt.md)



 <a id="a5f7ca261e2d4bb89cfd2d5cb3879561"></a>
# Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/002.const.d/001.txt.md)



 <a id="be5a731eb54d4373829959602535bad4"></a>
## `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/003.fn.d/001.txt.md)



 <a id="872ca7be066945bda55cb3e151af59fa"></a>
## `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/004.util.d/001.txt.md)



 <a id="51dc4813b3494ccea1199bf46f5b0afb"></a>
## `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenacce - NOT STABLE 


[001.txt.md](cntx.ins.d/003.inst.d/001.txt.md)



 <a id="d80fcdd0913a4de0b623a49db3b7a4d7"></a>
# Установка
 

[001.txt.md](cntx.ins.d/004.dlt.d/001.txt.md)



 <a id="3f33788e65df4c1ba35283e20d2c72a3"></a>
# Удаление 




