#!/bin/bash

linked_name=$1
linked_dir=$2
synced_dir=$3

ln -s $synced_dir/$linked_name/cache.db $linked_dir/cache.db
ln -s $synced_dir/$linked_name/history.cmdline $linked_dir/history.cmdline
ln -s $synced_dir/$linked_name/history.search $linked_dir/history.search
