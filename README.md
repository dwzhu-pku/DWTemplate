# DWTemplate

This repository serves as a collection of my personal workflow and tools for NLP research.

## 🔥 What's New

- **[2023/09/20]** Updated `visualize/plot.ipynb` to enhance lineplot and barplot visualizations; added debugging support for deepspeed.
- **[2023/07/02]** Initialized the repository.

## 🐞 Debugging

For debugging NLP projects, I have found `debugpy` to be a highly useful tool. For detailed usage, you can refer to the [pku-tangent guide on how to debug](https://github.com/PKU-TANGENT/how_to_debug). Here are specific examples to activate debugging mode, especially when using `accelerate` or `deepspeed`:

### Common Use Case:
```bash
debug_mode="-m debugpy --listen 127.0.0.1:6679 --wait-for-client"
python ${debug_mode} ./src/xxx.py
```

You can simply comment out the `debug_mode` line if you wish to run the code normally.

### Example of using with accelerate:
```bash
debug_mode="-m debugpy --listen 127.0.0.1:6679 --wait-for-client"
CUDA_VISIBLE_DEVICES=0,1,2 accelerate launch --multi_gpu --mixed_precision=bf16 --main_process_port 26074 ${debug_mode} ./src/xxx.py
```

### Example of using with deepspeed:
```bash
debug_mode="-m debugpy --listen 127.0.0.1:6679 --wait-for-client"
python -m torch.distributed.run --nproc_per_node=1 ${debug_mode} src/xxx.py
```

## 📈 Data Visualization

To create visualizations of data statistics, I utilize Seaborn and have included the code in `visualize/plot.ipynb`.

## 📑 Paper Polishing

For refining academic writing and enhancing language and sentence structures in papers, I recommend using the [chatgpt_please_improve_my_paper_writing](https://github.com/ashawkey/chatgpt_please_improve_my_paper_writing) project. This project provides valuable assistance in improving the quality of your academic writing.

The initial prompt is:
```
I would like to engage your services as an academic writing consultant to improve my writing.
I will provide you with text that requires refinement, and you will enhance it with more academic language and sentence structures.
The essence of the text should remain unaltered, including any LaTeX commands.
I request that you provide only the improved version of the text without any further explanations.
```
All subsequent inputs should be appended after this prefix:
```
Please refine the following text in academic English: \n
```