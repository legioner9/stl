
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
 - <a href=#b5deac7b0c80448da3a5a74e1bdc159a> STL in Linux</a>
   - <a href=#7c53e782d3d74936a86ef1a10b0c8bce> General </a>
     - <a href=#a5d3777d8ed945a19fa651a566bfc3e0> Save ~/.stl.d</a>
     - <a href=#a09ee7f0d99b4d9fa6021bd20027f88b> Flags</a>
       - <a href=#08408d4a9be440de9acfe537e7249e50> Global in dr: `~/`</a>
       - <a href=#18fd006c1e12445d9a9b28ae20dd741d> Local in dr: `~/.stl.d/data.d/flag.d`</a>
     - <a href=#f30855a5a1884bc68095ac81e9fb1bee> Using data</a>
   - <a href=#2a4b3ee3f81d4e22abbaa64ea80cc5bb> Processes</a>
     - <a href=#7c3282f5fc9140399d8b12cfc606f50a> Download</a>
     - <a href=#b1f922e697ea40e4a40f143d8aa956e4> Boot</a>
     - <a href=#8ac6c8c381d148a09c4518237aae45b3> Delete </a>
     - <a href=#fb9dcd8760714775b7ee661c85c84f32> Common</a>
   - <a href=#703b22102be14f8e8e2b12098106324d> Files :: `~/.stl.d`</a>
     - <a href=#d75dc67b44be44429a37c49f483c35a5> Download</a>
     - <a href=#af6df4036f4a423e8f63903eb7d3d3c7> Boot</a>
       - <a href=#1ac65d3a13034d18ba202e685caeeda3> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#81f4e0abc25640f39af99c47269c4cd6> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#8734f61ce51b49738cb16627fd8140b1> Delete</a>
     - <a href=#22f7e6e9c89f47ecb9115467e720404e> Common</a>
       - <a href=#0cc89855243545459030b6bd1862e0a9> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732270176_22112024170936

DATX: 1732270176
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="b5deac7b0c80448da3a5a74e1bdc159a"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.generald/001.txt.md)



 <a id="7c53e782d3d74936a86ef1a10b0c8bce"></a>
## General 


[001.txt.md](cntx.ins.d/002.generald/002.save.d/001.txt.md)



 <a id="a5d3777d8ed945a19fa651a566bfc3e0"></a>
### Save ~/.stl.d


[001.txt.md](cntx.ins.d/002.generald/003.flags.d/001.txt.md)



 <a id="a09ee7f0d99b4d9fa6021bd20027f88b"></a>
### Flags

Acceptable values:

    0 - false
    1 - true

 <a id="08408d4a9be440de9acfe537e7249e50"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="18fd006c1e12445d9a9b28ae20dd741d"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: `source ~/.stl.d/flow.d/boot.d/boot.sh`  (`> ~/.stl.d/data.d/log.d/stlrc.log` | `> stdout, stderr`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: (reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.txt.md](cntx.ins.d/002.generald/003.use_data.d/001.txt.md)



 <a id="f30855a5a1884bc68095ac81e9fb1bee"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="2a4b3ee3f81d4e22abbaa64ea80cc5bb"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="7c3282f5fc9140399d8b12cfc606f50a"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="b1f922e697ea40e4a40f143d8aa956e4"></a>
### Boot


[001.txt.md](cntx.ins.d/003.processes.d/004.dlt.d/001.txt.md)



 <a id="8ac6c8c381d148a09c4518237aae45b3"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/005.comm.d/001.txt.md)



 <a id="fb9dcd8760714775b7ee661c85c84f32"></a>
### Common


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="703b22102be14f8e8e2b12098106324d"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="d75dc67b44be44429a37c49f483c35a5"></a>
### Download


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="af6df4036f4a423e8f63903eb7d3d3c7"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="1ac65d3a13034d18ba202e685caeeda3"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="81f4e0abc25640f39af99c47269c4cd6"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="8734f61ce51b49738cb16627fd8140b1"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="22f7e6e9c89f47ecb9115467e720404e"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="0cc89855243545459030b6bd1862e0a9"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 




