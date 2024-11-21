
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
 - <a href=#88c48b2ef6924320947f88314a1ee08e> STL OPUS  </a>
 - <a href=#9a3f7730771c4d3ab468f221e4cc10c4> Концепция </a>
 - <a href=#a3c75aa0d66647a4a9e1ad3c1527bcd2> Загрузка </a>
   - <a href=#601ad839e9bc4f3f818bfe2d92571a92> Сохранение ~/.stl.d</a>
   - <a href=#9460964dba444dbb953a8ca412b1f69b> Использование данных установки</a>
   - <a href=#db2902ca73be4989aff78c10d61ca7f1> Флаги</a>
     - <a href=#a84b106bd12d4dac8906109b43717dde> Global in dr: `~/`</a>
     - <a href=#7a8f84fa6def4c2d859b0cf3a22ff85c> Local in dr: `~/.stl.d/data.d/flag.d`</a>
 - <a href=#67c96cb3391343a78feeecba7c934304> Files :: `~/.stl.d`</a>
   - <a href=#bc34b5b5746b4243a7dd3442725184b7> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
   - <a href=#e7b47985b7164d2483c4f95df89f0728> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
   - <a href=#3eda2a8fab634354bfdccfd143eecda6> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenacce - NOT STABLE </a>
 - <a href=#fd3dd55a372145728680317ffe8fc5de> Установка</a>
 - <a href=#79108a6b17354256b379f1fbb1e575b6> Удаление </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732213392_22112024012312

DATX: 1732213392
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="88c48b2ef6924320947f88314a1ee08e"></a>
# STL OPUS  

[001.txt.md](cntx.ins.d/001.concept.d/001.txt.md)



 <a id="9a3f7730771c4d3ab468f221e4cc10c4"></a>
# Концепция 



[001.txt.md](cntx.ins.d/002.boot.d/001.txt.md)



 <a id="a3c75aa0d66647a4a9e1ad3c1527bcd2"></a>
# Загрузка 


[001.txt.md](cntx.ins.d/002.boot.d/002.save.d/001.txt.md)



 <a id="601ad839e9bc4f3f818bfe2d92571a92"></a>
## Сохранение ~/.stl.d


[001.txt.md](cntx.ins.d/002.boot.d/003.use_data.d/001.txt.md)



 <a id="9460964dba444dbb953a8ca412b1f69b"></a>
## Использование данных установки

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/002.boot.d/004.flags.d/001.txt.md)



 <a id="db2902ca73be4989aff78c10d61ca7f1"></a>
## Флаги

Acceptable values:

    0 - false
    1 - true

 <a id="a84b106bd12d4dac8906109b43717dde"></a>
### Global in dr: `~/`

- ~/.stl.use.flag - 

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="7a8f84fa6def4c2d859b0cf3a22ff85c"></a>
### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: `source ~/.stl.d/flow.d/boot.d/boot.sh`  (`> ~/.stl.d/data.d/log.d/stlrc.log` | `> stdout, stderr`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: (reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.1L.txt.md](cntx.ins.d/002.boot.d/005.files.d/001.1L.txt.md)



 <a id="67c96cb3391343a78feeecba7c934304"></a>
# Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/002.const.d/001.txt.md)



 <a id="bc34b5b5746b4243a7dd3442725184b7"></a>
## `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/003.fn.d/001.txt.md)



 <a id="e7b47985b7164d2483c4f95df89f0728"></a>
## `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/002.boot.d/005.files.d/004.util.d/001.txt.md)



 <a id="3eda2a8fab634354bfdccfd143eecda6"></a>
## `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenacce - NOT STABLE 


[001.txt.md](cntx.ins.d/003.inst.d/001.txt.md)



 <a id="fd3dd55a372145728680317ffe8fc5de"></a>
# Установка
 

[001.txt.md](cntx.ins.d/004.dlt.d/001.txt.md)



 <a id="79108a6b17354256b379f1fbb1e575b6"></a>
# Удаление 




