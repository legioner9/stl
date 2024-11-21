
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
 - <a href=#50225d7c34ce4e8da479b1274ce8ddd7> STL OPUS  </a>
 - <a href=#270cd65a3fc848269971b2f035a41564> Концепция </a>
 - <a href=#a25250be7aaa4decbe0196567b70b9ef> Загрузка </a>
   - <a href=#78a44966490e403aa72c54a7efe4df1d> Сохранение ~/.stl.d</a>
   - <a href=#608bce40dfa74dda9d20331bd45ac23d> Использование данных установки</a>
   - <a href=#d5ed3357322140139aed363ac74fc65e> Флаги</a>
     - <a href=#d18fb20648584714a33c285602c0a2c8> Global in dr: `~/`</a>
     - <a href=#a7560fb2f6274547a3fe734117da0840> Local in dr: `~/.stl.d/data.d/flag.d`</a>
 - <a href=#88c749f8d83d48da8d182be0ae58276e> Files :: `~/.stl.d`</a>
   - <a href=#9c672b4be9544368ba0791a3f94f5c00> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
   - <a href=#efc167c605d049bfa9777833b022f662> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
   - <a href=#e91db1ca428b4384a1876993782264a6> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenacce - NOT STABLE </a>
 - <a href=#5f825245246e456a8b555848639b0fb4> Установка</a>
 - <a href=#3bcf7938df144ea4bd0bca46f643be4d> Удаление </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732213685_22112024012805

DATX: 1732213685
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="50225d7c34ce4e8da479b1274ce8ddd7"></a>
# STL OPUS  

[001.txt.md](cntx.ins.d/001.concept.d/001.txt.md)



 <a id="270cd65a3fc848269971b2f035a41564"></a>
# Концепция 



[001.txt.md](cntx.ins.d/002.boot.d/001.txt.md)



 <a id="a25250be7aaa4decbe0196567b70b9ef"></a>
# Загрузка 


[001.txt.md](cntx.ins.d/002.boot.d/002.save.d/001.txt.md)



 <a id="78a44966490e403aa72c54a7efe4df1d"></a>
## Сохранение ~/.stl.d


[001.txt.md](cntx.ins.d/002.boot.d/003.use_data.d/001.txt.md)



 <a id="608bce40dfa74dda9d20331bd45ac23d"></a>
## Использование данных установки

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/002.boot.d/004.flags.d/001.txt.md)



 <a id="d5ed3357322140139aed363ac74fc65e"></a>
## Флаги

Acceptable values:

    0 - false
    1 - true

 <a id="d18fb20648584714a33c285602c0a2c8"></a>
### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="a7560fb2f6274547a3fe734117da0840"></a>
### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: `source ~/.stl.d/flow.d/boot.d/boot.sh`  (`> ~/.stl.d/data.d/log.d/stlrc.log` | `> stdout, stderr`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: (reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.1L.txt.md](cntx.ins.d/002.boot.d/005.files.d/001.1L.txt.md)



 <a id="88c749f8d83d48da8d182be0ae58276e"></a>
# Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/002.const.d/001.txt.md)



 <a id="9c672b4be9544368ba0791a3f94f5c00"></a>
## `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/003.fn.d/001.txt.md)



 <a id="efc167c605d049bfa9777833b022f662"></a>
## `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/004.util.d/001.txt.md)



 <a id="e91db1ca428b4384a1876993782264a6"></a>
## `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenacce - NOT STABLE 


[001.txt.md](cntx.ins.d/003.inst.d/001.txt.md)



 <a id="5f825245246e456a8b555848639b0fb4"></a>
# Установка
 

[001.txt.md](cntx.ins.d/004.dlt.d/001.txt.md)



 <a id="3bcf7938df144ea4bd0bca46f643be4d"></a>
# Удаление 




