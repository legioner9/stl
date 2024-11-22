
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
 - <a href=#b097b15748334c8585a01c3bd469e530> STL in Linux</a>
   - <a href=#0a461070c19e42148382ed88b4be752f> General </a>
     - <a href=#cde733adfc0e482389ac2d300a7d1ca9> Save ~/.stl.d</a>
     - <a href=#dfbe9d008197405093315c5390f2309f> Flags</a>
       - <a href=#2f63cb5e1ba04948b6d6e6ad2b81ad3e> Global in dr: `~/`</a>
       - <a href=#11c3ed6dd3fd428faebcc403aa649e3b> Local in dr: `~/.stl.d/data.d/flag.d`</a>
     - <a href=#858be97c8e514629852318ff985159f0> Using data</a>
   - <a href=#252361000b5247a3b32dbdfdc7078217> Processes</a>
     - <a href=#3f6e1b8bdd2b4aabb9d8e5aedd162c1f> Download</a>
     - <a href=#dd09657f5cdf48d79546a1f2ed9c3783> Boot</a>
     - <a href=#198fc9a8adb745a581e5c10dbb445588> Delete </a>
     - <a href=#f199dc13f96645bd870e3a038bd40c75> Common</a>
   - <a href=#1ba3f0119ff24c4abb6528901bef60d6> Files :: `~/.stl.d`</a>
     - <a href=#6f76072c6c4b47bdad1a3085cd705467> Download</a>
     - <a href=#789425b212914fe89e17eb917f5944cb> Boot</a>
       - <a href=#83187889a5854e81814a1d6cee1198b8> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#f4ba6c4c307a48d1b3923d81ddfb8f64> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#4cc439ca5afd4c74b49d97d14e403087> Delete</a>
     - <a href=#a66c4addde344bc18365e356861bc56f> Common</a>
       - <a href=#272bb2a1bbff41818e75b1e028da120c> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732270043_22112024170723

DATX: 1732270043
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="b097b15748334c8585a01c3bd469e530"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.generald/001.txt.md)



 <a id="0a461070c19e42148382ed88b4be752f"></a>
## General 


[001.txt.md](cntx.ins.d/002.generald/002.save.d/001.txt.md)



 <a id="cde733adfc0e482389ac2d300a7d1ca9"></a>
### Save ~/.stl.d


[001.txt.md](cntx.ins.d/002.generald/003.flags.d/001.txt.md)



 <a id="dfbe9d008197405093315c5390f2309f"></a>
### Flags

Acceptable values:

    0 - false
    1 - true

 <a id="2f63cb5e1ba04948b6d6e6ad2b81ad3e"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="11c3ed6dd3fd428faebcc403aa649e3b"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: `source ~/.stl.d/flow.d/boot.d/boot.sh`  (`> ~/.stl.d/data.d/log.d/stlrc.log` | `> stdout, stderr`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: (reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.txt.md](cntx.ins.d/002.generald/003.use_data.d/001.txt.md)



 <a id="858be97c8e514629852318ff985159f0"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="252361000b5247a3b32dbdfdc7078217"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="3f6e1b8bdd2b4aabb9d8e5aedd162c1f"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="dd09657f5cdf48d79546a1f2ed9c3783"></a>
### Boot


[001.txt.md](cntx.ins.d/003.processes.d/004.dlt.d/001.txt.md)



 <a id="198fc9a8adb745a581e5c10dbb445588"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/005.comm.d/001.txt.md)



 <a id="f199dc13f96645bd870e3a038bd40c75"></a>
### Common


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="1ba3f0119ff24c4abb6528901bef60d6"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="6f76072c6c4b47bdad1a3085cd705467"></a>
### Download


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="789425b212914fe89e17eb917f5944cb"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="83187889a5854e81814a1d6cee1198b8"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="f4ba6c4c307a48d1b3923d81ddfb8f64"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="4cc439ca5afd4c74b49d97d14e403087"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="a66c4addde344bc18365e356861bc56f"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="272bb2a1bbff41818e75b1e028da120c"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 




