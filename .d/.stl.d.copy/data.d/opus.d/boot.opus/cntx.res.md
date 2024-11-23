
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
 - <a href=#141d73ae776f413fbfcbb511cc96516d> STL in Linux</a>
   - <a href=#d478b281260e4aa5a6db3abe108da729> General </a>
     - <a href=#e655e8224f244c29ab29c376e23ce46e> Save ~/.stl.d</a>
     - <a href=#9f03e21e82a1464cb177946c07de9210> Flags</a>
       - <a href=#d7cc88da3bce4d4f86a3a8981fe0e9b3> Global in dr: `~/`</a>
       - <a href=#668ca78543894e8c98e85cee16efed00> Local in dr: `~/.stl.d/data.d/flag.d`</a>
     - <a href=#9bd4df6fb8784528bf2dc9f0957bedae> Using data</a>
   - <a href=#dd5894cc945b4cb08443895836e30b80> Processes</a>
     - <a href=#40bac7262df54819bd370ced1bda1ca8> Download</a>
     - <a href=#276aabaf1e7f44e2975886d4ae9958a6> Boot</a>
     - <a href=#4e3ecd9ab3df47a59d5d0aac1c0ba2fe> Delete </a>
     - <a href=#2a0e95a7f33e400eb34480637bc0320c> Common</a>
   - <a href=#9d06071b462c4fcf83492db2dd21e8ca> Files :: `~/.stl.d`</a>
     - <a href=#70c9a7789a5d4658b81d00a62feef15d> Download </a>
     - <a href=#6c5b53ddf47a485385a67344232969d7> Boot</a>
       - <a href=#3b9d5938407f4591b0bdd2cc9a6f49c7> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#11a7980215ca4d3f93728030a0f275b9> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#19f2fd88db23463c9819b591b7952c73> Delete</a>
     - <a href=#1ddb51634fcf48d5a4864f8523b8e921> Common</a>
       - <a href=#92dac27d6eec48318f8d50dfaea760d2> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732360129_23112024180849

DATX: 1732360129
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="141d73ae776f413fbfcbb511cc96516d"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.generald/001.txt.md)



 <a id="d478b281260e4aa5a6db3abe108da729"></a>
## General 


[001.txt.md](cntx.ins.d/002.generald/002.save.d/001.txt.md)



 <a id="e655e8224f244c29ab29c376e23ce46e"></a>
### Save ~/.stl.d


[001.txt.md](cntx.ins.d/002.generald/003.flags.d/001.txt.md)



 <a id="9f03e21e82a1464cb177946c07de9210"></a>
### Flags

Acceptable values:

    0 - false
    1 - true

 <a id="d7cc88da3bce4d4f86a3a8981fe0e9b3"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="668ca78543894e8c98e85cee16efed00"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: `source ~/.stl.d/flow.d/boot.d/boot.sh`  (`> ~/.stl.d/data.d/log.d/stlrc.log` | `> stdout, stderr`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: (reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.txt.md](cntx.ins.d/002.generald/003.use_data.d/001.txt.md)



 <a id="9bd4df6fb8784528bf2dc9f0957bedae"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="dd5894cc945b4cb08443895836e30b80"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="40bac7262df54819bd370ced1bda1ca8"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="276aabaf1e7f44e2975886d4ae9958a6"></a>
### Boot


[001.txt.md](cntx.ins.d/003.processes.d/004.dlt.d/001.txt.md)



 <a id="4e3ecd9ab3df47a59d5d0aac1c0ba2fe"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/005.comm.d/001.txt.md)



 <a id="2a0e95a7f33e400eb34480637bc0320c"></a>
### Common


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="9d06071b462c4fcf83492db2dd21e8ca"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="70c9a7789a5d4658b81d00a62feef15d"></a>
### Download 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="6c5b53ddf47a485385a67344232969d7"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="3b9d5938407f4591b0bdd2cc9a6f49c7"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="11a7980215ca4d3f93728030a0f275b9"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="19f2fd88db23463c9819b591b7952c73"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="1ddb51634fcf48d5a4864f8523b8e921"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="92dac27d6eec48318f8d50dfaea760d2"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 




