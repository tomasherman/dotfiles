#!/bin/bash

linked_name=$1
linked_dir=$2
synced_dir=$3

rm $linked_dir/cache.db
rm $linked_dir/history.cmdline
rm $linked_dir/history.search
