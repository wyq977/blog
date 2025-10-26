---
title: "Shell Speedup"
date: 2025-01-21T21:16:21+01:00
---

https://work.lisk.in/2020/11/20/even-faster-bash-startup.html#completions

https://danpker.com/posts/faster-bash-startup/


## Benchmark bash startup speed by hyperfine

```shell
hyperfine 'bash -i'
```

Benchmark 1: bash -i
  Time (mean ± σ):     262.5 ms ±  29.4 ms    [User: 156.9 ms, System: 74.1 ms]
  Range (min … max):   249.0 ms … 345.9 ms    10 runs


```
$ source ~/.bash_profile 
bash_exports: 0.015
bash_aliases: 0.000
bash_autocompletion: 0.000
bash_colors: 0.000
bash_functions: 0.000
bash_options: 0.000
bash_prompt: 0.024
bash.local: 0.000
conda: 0.000
```

```bash
Benchmark 1: bash --login
  Time (mean ± σ):      45.8 ms ±   2.0 ms    [User: 16.3 ms, System: 20.7 ms]
  Range (min … max):    42.0 ms …  52.8 ms    57 runs
```

`eval $(/opt/homebrew/bin/brew shellenv)` would add ~ 27 ms delay

`bash_prompt` add ~ 20 ms

```
bash_exports: 0.001 s
bash_aliases: 0.000 s
bash_autocompletion: 0.029 s
bash_colors: 0.000 s
bash_functions: 0.000 s
bash_options: 0.000 s
bash_prompt: 0.022 s
bash.local: 0.000 s
conda: 0.003
```

## Autocompletion diff: 140 ms on load up

```bash
myMacbook:~ wyq977$ hyperfine 'bash --login'
Benchmark 1: bash --login
  Time (mean ± σ):      12.9 ms ±   0.8 ms    [User: 5.0 ms, System: 4.9 ms]
  Range (min … max):    11.7 ms …  16.8 ms    187 runs
 
myMacbook:~ wyq977$ hyperfine 'bash -i'
Benchmark 1: bash -i
  Time (mean ± σ):     160.2 ms ±   2.4 ms    [User: 120.7 ms, System: 33.2 ms]
  Range (min … max):   157.3 ms … 164.9 ms    17 runs
```

## ZSH is much faster?

```bash
myMacbook:~ wyq977$ hyperfine 'zsh --login'
Benchmark 1: zsh --login
  Time (mean ± σ):       4.4 ms ±   0.6 ms    [User: 1.3 ms, System: 1.8 ms]
  Range (min … max):     3.2 ms …   7.2 ms    311 runs


❯ hyperfine 'zsh -cli exit'
Benchmark 1: zsh -cli exit
  Time (mean ± σ):      72.8 ms ±   1.5 ms    [User: 26.2 ms, System: 30.2 ms]
  Range (min … max):    69.7 ms …  76.5 ms    39 runs
 
❯ hyperfine '/opt/homebrew/bin/bash -cli exit'
Benchmark 1: /opt/homebrew/bin/bash -cli exit
  Time (mean ± σ):      77.0 ms ±   3.4 ms    [User: 37.4 ms, System: 27.3 ms]
  Range (min … max):    73.9 ms …  93.6 ms    31 runs
 
```