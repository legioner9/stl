
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
 - <a href=#3d33ed4d3bb14f0b8f0d589122f19a57> STL in Linux</a>
   - <a href=#987113eeebc04c50b9e267a6a374dd92> General </a>
     - <a href=#aff9b35faa2a444a8017f7aa195938cf> Save ~/.stl.d</a>
     - <a href=#78886af4097c4b5a948cebc6976c7c7a> Flags</a>
       - <a href=#0243088c286449d7966acf1bcef9f1f9> Global in dr: `~/`</a>
       - <a href=#34fbc7c76aba48ff82cd4602f69b6a56> Local in dr: `~/.stl.d/data.d/flag.d`</a>
     - <a href=#46f1681cc672438cb886303e9ccdbdfc> Using data</a>
   - <a href=#7e61ad6de685420ca10f9cb9d34e9db5> Processes</a>
     - <a href=#e3bdcc72317b4f37b63471c5cba15027> Download</a>
     - <a href=#2d391195a01b423b8683220bf9ddda00> Boot</a>
     - <a href=#dc93e92574634cc981f027bd9c8ab3ef> Delete </a>
     - <a href=#132d779f4984495bb34ab1c92c8e0337> Common</a>
   - <a href=#1f099cb748754963ae28ac4f57cbda4f> Files :: `~/.stl.d`</a>
     - <a href=#55260a19e261452288b6f17501fc3799> Download</a>
     - <a href=#e7836fbc320b4308a88a2b91dd8de48a> Boot</a>
       - <a href=#96ef7e39f79b480ba2e4201ccfadb5f1> `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)</a>
       - <a href=#259cd8bbb3084088a6ff9d0726fd4051> `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl</a>
     - <a href=#0d231cf6bacf4fda8c752c84e754e532> Delete</a>
     - <a href=#9bac0682442a4c13abbf0174b72f3a04> Common</a>
       - <a href=#e5c09f03249d4144a5ce1cd27c925b78> `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.ins.d /home/st/.stl.d/data.d/opus.d/boot.opus/cntx.res.md 2

PPWD: /home/st/.stl.d/data.d/opus.d/boot.opus

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732266950_22112024161550

DATX: 1732266950
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="3d33ed4d3bb14f0b8f0d589122f19a57"></a>
# STL in Linux

[001.txt.md](cntx.ins.d/002.generald/001.txt.md)



 <a id="987113eeebc04c50b9e267a6a374dd92"></a>
## General 


[001.txt.md](cntx.ins.d/002.generald/002.save.d/001.txt.md)



 <a id="aff9b35faa2a444a8017f7aa195938cf"></a>
### Save ~/.stl.d


[001.txt.md](cntx.ins.d/002.generald/003.flags.d/001.txt.md)



 <a id="78886af4097c4b5a948cebc6976c7c7a"></a>
### Flags

Acceptable values:

    0 - false
    1 - true

 <a id="0243088c286449d7966acf1bcef9f1f9"></a>
#### Global in dr: `~/`

- `~/.stl.use.flag` :

    (1|0) :: (abort|not abort) process : `source ~/.stl.d/flow.d/boot.d/boot.sh` at the begining 

 <a id="34fbc7c76aba48ff82cd4602f69b6a56"></a>
#### Local in dr: `~/.stl.d/data.d/flag.d`


- `~/.stl.d/data.d/flag.d/stlrc.log.flag` :


    (1|0) :: `source ~/.stl.d/flow.d/boot.d/boot.sh`  (`> ~/.stl.d/data.d/log.d/stlrc.log` | `> stdout, stderr`)
     

- `~/.stl.d/data.d/flag.d/git_reset.flag` : 
 

    (1|0) :: (reset | not reset) all git diff :: use in git_flow_functions :: protection mode against changes

[001.txt.md](cntx.ins.d/002.generald/003.use_data.d/001.txt.md)



 <a id="46f1681cc672438cb886303e9ccdbdfc"></a>
### Using data

- BOOT_REPO_PATH определяется при установе STL и используется для дальнейшего определения путей 
    c.e. STL_PATH  


[001.txt.md](cntx.ins.d/003.processes.d/001.txt.md)



 <a id="7e61ad6de685420ca10f9cb9d34e9db5"></a>
## Processes


[001.txt.md](cntx.ins.d/003.processes.d/002.inst.d/001.txt.md)



 <a id="e3bdcc72317b4f37b63471c5cba15027"></a>
### Download
 

[001.txt.md](cntx.ins.d/003.processes.d/003.boot.d/001.txt.md)



 <a id="2d391195a01b423b8683220bf9ddda00"></a>
### Boot


[001.txt.md](cntx.ins.d/003.processes.d/004.dlt.d/001.txt.md)



 <a id="dc93e92574634cc981f027bd9c8ab3ef"></a>
### Delete 


[001.txt.md](cntx.ins.d/003.processes.d/005.comm.d/001.txt.md)



 <a id="132d779f4984495bb34ab1c92c8e0337"></a>
### Common


[001.1L.txt.md](cntx.ins.d/004.files.d/001.1L.txt.md)



 <a id="1f099cb748754963ae28ac4f57cbda4f"></a>
## Files :: `~/.stl.d`




[001.txt.md](cntx.ins.d/004.files.d/002.inst.d/001.txt.md)



 <a id="55260a19e261452288b6f17501fc3799"></a>
### Download


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/001.txt.md)



 <a id="e7836fbc320b4308a88a2b91dd8de48a"></a>
### Boot
 


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/002.const.d/001.txt.md)



 <a id="96ef7e39f79b480ba2e4201ccfadb5f1"></a>
#### `~/.stl.d/prc.d/boot_stl_const.d` :: define const for all stl (felf start fn)


[001.txt.md](cntx.ins.d/004.files.d/003.boot.d/003.fn.d/001.txt.md)



 <a id="259cd8bbb3084088a6ff9d0726fd4051"></a>
#### `~/.stl.d/prc.d/boot_stl_fn.d` :: define fn for use for boot stl


[001.txt.md](cntx.ins.d/004.files.d/004.dlt.d/001.txt.md)



 <a id="0d231cf6bacf4fda8c752c84e754e532"></a>
### Delete


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/001.txt.md)



 <a id="9bac0682442a4c13abbf0174b72f3a04"></a>
### Common


[001.txt.md](cntx.ins.d/004.files.d/005.comm.d/004.util.d/001.txt.md)



 <a id="e5c09f03249d4144a5ce1cd27c925b78"></a>
#### `~/.stl.d/prc.d/stl_util.d` :: define fn for temporary maintenace - NOT STABLE 




