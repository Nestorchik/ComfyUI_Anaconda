:: Запускать как bat-файл из Conda!!!
:: Это оттестированный рабочий код у меня и на моих путях.
:: Можете изменить пути на свои
:: Установка ComfyUI + Manager с git
git clone https://github.com/comfyanonymous/ComfyUI.git d:\0\ComfyUI
git clone https://github.com/ltdrdata/ComfyUI-Manager.git d:\0\ComfyUI\custom_nodes\ComfyUI-Manager
conda create -n venv_comfy312 python=3.12 -y && activate venv_comfy312 && conda install pytorch torchvision torchaudio pytorch-cuda=12.4 -c pytorch -c nvidia -y && conda install einops transformers safetensors tokenizers sentencepiece pyyaml scipy psutil kornia aiohttp -y && pip install torchsde spandrel soundfile && conda env export > d:\0\conda_comfyui_required.yml && python d:\0\ComfyUI\main.py --windows-standalone-build
