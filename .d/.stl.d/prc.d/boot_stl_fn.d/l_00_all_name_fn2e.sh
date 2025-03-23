#!/bin/bash

l_00_all_name_fn2e(){
    declare -F -p | cut -d " " -f 3 
}